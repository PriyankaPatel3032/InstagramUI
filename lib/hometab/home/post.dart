import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';

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
                          child: Container(
                            child: Row(
                              children: [
                                CircleAvatar(
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
                        Icon(
                          Icons.more_vert,
                          color: Colors.black,
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
}
