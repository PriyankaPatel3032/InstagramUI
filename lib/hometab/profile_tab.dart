import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Container(
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CommanWidget.textLayoutWithWeight(
                          "Priyanka Patel", 16, Colors.black, FontWeight.bold),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.add_box_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.menu_outlined,
                        size: 25,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
              child: Container(
                height: 90,
                child: Row(
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 33,
                          backgroundColor: Color(0xffdbdbdb),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: Color(0xfff8f7f1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffdbdbdb),
                              radius: 30,
                              child: Icon(
                                Icons.person_rounded,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: CommanWidget.textLayoutWithWeight(
                              "Priyanka Patel",
                              12,
                              Colors.black,
                              FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(width: 30),
                    Container(
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommanWidget.textLayoutWithWeight(
                                    "20", 15, Colors.black, FontWeight.bold),
                                CommanWidget.textLayout(
                                    "Posts", 15, Colors.black),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommanWidget.textLayoutWithWeight(
                                    "332", 15, Colors.black, FontWeight.bold),
                                CommanWidget.textLayout(
                                    "Followers", 15, Colors.black),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommanWidget.textLayoutWithWeight(
                                    "668", 15, Colors.black, FontWeight.bold),
                                CommanWidget.textLayout(
                                    "Following", 15, Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: size.width,
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffefefef), // background
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 2.0, bottom: 2.0),
                            child: CommanWidget.textLayoutWithWeight(
                                "Edit profile",
                                13,
                                Colors.black,
                                FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            primary: Color(0xffefefef), // background
                          ),
                          onPressed: () {},
                          child: const Icon(
                            Icons.person_add_alt,
                            color: Colors.black,
                            size: 20,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffdbdbdb),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xfff8f7f1),
                            child: CircleAvatar(
                              backgroundColor: Color(0xffdbdbdb),
                              radius: 22,
                              child: Icon(
                                Icons.person_rounded,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: CommanWidget.textLayout(
                              "HighLight", 11, Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xff8f8f8f),
                          radius: 23,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            child: Icon(
                              Icons.add,
                              size: 28,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child:
                              CommanWidget.textLayout("New", 11, Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: size.height - 380,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      bottom: PreferredSize(
                        preferredSize:
                            new Size(size.width, -8.0),
                        child: Material(
                          color: Colors.white,
                          child: Container(
                            child: TabBar(
                              indicatorColor: Colors.black,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                Container(
                                    child:
                                        Tab(icon: Icon(Icons.grid_on_sharp))),
                                Container(
                                    child: const Tab(
                                        icon: Icon(Icons.play_arrow_outlined))),
                                Container(
                                    child: const Tab(
                                        icon: Icon(Icons.person_pin_outlined))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 3,
                          crossAxisSpacing: 3,
                          children: List.generate(10, (index) {
                            return SizedBox(
                              width: size.width,
                              child: Stack(
                                fit: StackFit.passthrough,
                                children: <Widget>[
                                  Image.asset('assets/images/nature.png',
                                      fit: BoxFit.fill),
                                  const Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                        Container(
                          height: 1000,
                        ),
                        Container(
                          height: 1000,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
