import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/instagram.png'),
                      height: 45,
                      width: 110,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.message_outlined,
                      size: 25,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffdbdbdb),
                          radius: 28,
                          child: Icon(
                            Icons.person_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          left: 40,
                          top: 40,
                          child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: CommanWidget.textLayout(
                          "Your Story", 10, Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
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
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffdbdbdb),
                                    radius: 26,
                                    child: Icon(
                                      Icons.person_rounded,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: CommanWidget.textLayout(
                                  'Yancy Davies', 9, Colors.black),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
