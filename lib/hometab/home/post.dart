import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';
import 'package:instagramflutter/comman/strings.dart';

import '../profile_tab.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext contect, int index) {
          return Column(
            children: [
              Card(
                elevation: 3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, left: 5.0, top: 5.0),
                          child: InkWell(
                            onTap: (){
                              _navigateToProfileScreen(context);
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.person,
                                        size: 18,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(children: [
                                      CommanWidget.textLayout(
                                          "Andy Rubin", 10, Colors.black),
                                      CommanWidget.textLayout(
                                          "Post Details", 9, Colors.black),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            bottom_sheet();
                          },
                          child: const Icon(
                            Icons.more_vert,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Image.asset('assets/images/nature.png',
                          width: MediaQuery.of(context).size.width,
                          height: 170,
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              setState(() {
                                isLike = !isLike;
                              });
                            },
                            icon: isLike
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 17,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    size: 17,
                                  ),
                          ),
                        ]),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 17,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.send,
                          size: 17,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.save_alt,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void bottom_sheet() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Wrap(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 40,
                            height: 5,
                            alignment: Alignment.center,
                            color: Colors.grey[600],
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Column(
                              children: [
                                Container(
                                    width: 55,
                                    height: 55,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(130),
                                      border: Border.all(width: 1, color: Colors.black),

                                    ),
                                    child: Icon(
                                      Icons.share_outlined, size: 30,)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CommanWidget.textLayout(strings.share, 13, Colors.black),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    width: 55,
                                    height: 55,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(130),
                                      border: Border.all(width: 1, color: Colors.black),

                                    ),
                                    child: Icon(
                                      Icons.link_outlined, size: 30,)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CommanWidget.textLayout(strings.link, 13, Colors.black),
                                )

                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    width: 55,
                                    height: 55,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(130),
                                      border: Border.all(width: 1, color: Colors.black),

                                    ),
                                    child: Icon(
                                      Icons.save_alt, size: 30,)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CommanWidget.textLayout(strings.save,13,Colors.black),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    width: 55,
                                    height: 55,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(130),
                                      border: Border.all(width: 1, color: Colors.black),

                                    ),
                                    child: Icon(
                                      Icons.qr_code_scanner_rounded, size: 30,)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:  CommanWidget.textLayout(strings.qr_code,13,Colors.black),
                                )

                              ],
                            ),

                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(height: 1,width:  MediaQuery.of(context).size.width,
                            color: Color(0x86E0D8D8),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.star_border,size: 30,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:  CommanWidget.textLayout(strings.add_to_favourites,13,Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.person_remove_alt_1_outlined,size: 30,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:  CommanWidget.textLayout(strings.unfollow,13,Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(height: 1,width:  MediaQuery.of(context).size.width,
                            color: Color(0x86E0D8D8),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.info_outline,size: 30,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:  CommanWidget.textLayout(strings.why_you_seeing,13,Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.hide_source,size: 30),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:  CommanWidget.textLayout(strings.hide,13,Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.person,size: 30),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:  CommanWidget.textLayout(strings.about_this_account,13,Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.report_gmailerrorred_rounded,color: Colors.red,size: 30),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child:  CommanWidget.textLayout(strings.report,13,Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          });
    });
  }
  void _navigateToProfileScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileTab()));
  }
}
