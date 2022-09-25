import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';

class LikeTab extends StatefulWidget {
  const LikeTab({Key? key}) : super(key: key);

  @override
  _LikeTavState createState() => _LikeTavState();
}

class _LikeTavState extends State<LikeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommanWidget.textLayoutWithWeight(
                    "Activity",
                    20,
                    Colors.black,
                    FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              stops: [
                                0.2,
                                0.4,
                                1.0,
                                0.8,
                                0.8,
                                0.4,
                                0.2,
                              ],
                              colors: [
                                Color(0xFFF1B315),
                                Color(0xFFF34249),
                                Color(0xFFBE09A6),
                                Color(0xFFCD4FBD),
                                Color(0xFFF00D67),
                                Color(0xFFF34249),
                                Color(0xFFE38337),
                              ],
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffdbdbdb),
                              radius: 18,
                              child: Icon(
                                Icons.person_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommanWidget.textLayoutWithWeight(
                              "Follow requests",
                              12,
                              Colors.black,
                              FontWeight.bold,
                            ),
                            CommanWidget.textLayoutWithWeight(
                              "Approve or ignore requests",
                              12,
                              Colors.grey,
                              FontWeight.bold,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CommanWidget.textLayoutWithWeight(
                    "This Week",
                    13,
                    Colors.black,
                    FontWeight.normal,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    0.2,
                                    0.4,
                                    1.0,
                                    0.8,
                                    0.8,
                                    0.4,
                                    0.2,
                                  ],
                                  colors: [
                                    Color(0xFFF1B315),
                                    Color(0xFFF34249),
                                    Color(0xFFBE09A6),
                                    Color(0xFFCD4FBD),
                                    Color(0xFFF00D67),
                                    Color(0xFFF34249),
                                    Color(0xFFE38337),
                                  ],
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffdbdbdb),
                                  radius: 18,
                                  child: Icon(
                                    Icons.person_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: SizedBox(
                              width: 95,
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                  text: "Priyanka Patel",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: " requested to follow you.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: " 3d",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold))
                              ])),
                            ),
                          ),
                        ],
                      ),

                      //button
                      Container(
                        height: 30,
                        child: Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFF0195F7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: CommanWidget.textLayoutWithWeight(
                                "Confirm",
                                12,
                                Colors.white,
                                FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFEFEFEF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: CommanWidget.textLayoutWithWeight(
                                "Delete",
                                12,
                                Colors.black,
                                FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    0.2,
                                    0.4,
                                    1.0,
                                    0.8,
                                    0.8,
                                    0.4,
                                    0.2,
                                  ],
                                  colors: [
                                    Color(0xFFF1B315),
                                    Color(0xFFF34249),
                                    Color(0xFFBE09A6),
                                    Color(0xFFCD4FBD),
                                    Color(0xFFF00D67),
                                    Color(0xFFF34249),
                                    Color(0xFFE38337),
                                  ],
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffdbdbdb),
                                  radius: 18,
                                  child: Icon(
                                    Icons.person_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: SizedBox(
                              width: 170,
                              child: RichText(
                                  text: TextSpan(children: [
                                const TextSpan(
                                  text: "Priyanka Patel",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: " started following you.",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: " 4d",
                                    style: new TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold))
                              ])),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFEFEFEF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: CommanWidget.textLayoutWithWeight(
                            "Following",
                            12,
                            Colors.black,
                            FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    0.2,
                                    0.4,
                                    1.0,
                                    0.8,
                                    0.8,
                                    0.4,
                                    0.2,
                                  ],
                                  colors: [
                                    Color(0xFFF1B315),
                                    Color(0xFFF34249),
                                    Color(0xFFBE09A6),
                                    Color(0xFFCD4FBD),
                                    Color(0xFFF00D67),
                                    Color(0xFFF34249),
                                    Color(0xFFE38337),
                                  ],
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffdbdbdb),
                                  radius: 18,
                                  child: Icon(
                                    Icons.person_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: RichText(
                                text: const TextSpan(
                                    text: "Priyanka Patel",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                  TextSpan(
                                      text: " liked your comment",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal)),
                                  TextSpan(
                                      text: " 5d",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal))
                                ])),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/nature.png',
                          height: 80, width: 40),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  stops: [
                                    0.2,
                                    0.4,
                                    1.0,
                                    0.8,
                                    0.8,
                                    0.4,
                                    0.2,
                                  ],
                                  colors: [
                                    Color(0xFFF1B315),
                                    Color(0xFFF34249),
                                    Color(0xFFBE09A6),
                                    Color(0xFFCD4FBD),
                                    Color(0xFFF00D67),
                                    Color(0xFFF34249),
                                    Color(0xFFE38337),
                                  ],
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffdbdbdb),
                                  radius: 18,
                                  child: Icon(
                                    Icons.person_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: SizedBox(
                              width: 170,
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                  text: "Priyanka Patel",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                    text: " requested to follow you.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: " 6d",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold))
                              ])),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF0195F7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: CommanWidget.textLayoutWithWeight(
                            "Follow",
                            12,
                            Colors.white,
                            FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
