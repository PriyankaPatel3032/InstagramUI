import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/strings.dart';
import '../../../comman/comman_widget.dart';

class Explore extends StatefulWidget {
  final String image;
   const Explore({Key? key, required this.image}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool isLike = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context, false);
                      },
                      child: Icon(
                      Icons.arrow_back_sharp,size: 20,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CommanWidget.textLayoutWithWeight(
                      strings.explore ,
                      20,
                      Colors.black,
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
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
                        SizedBox(width: 10,),
                        CommanWidget.textLayout(
                            "Jack John", 11, Colors.black),

                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFEFEFEF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: CommanWidget.textLayoutWithWeight(
                            strings.follow,
                            12,
                            Colors.black,
                            FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            bottom_sheet();
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),

                      ],
                    )

                  ],
                ),
              ),

              Image.network(widget.image),
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
                              size: 20,
                            )
                                : const Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.send,
                          size: 20,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.save_alt,
                      size: 20,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Row(
                  children: [
                    CommanWidget.textLayout(strings.liked_by, 11, Colors.black),
                    SizedBox(width: 5),

                    CommanWidget.textLayoutWithWeight('Smith Richard', 11, Colors.black,FontWeight.bold),
                    SizedBox(width: 5),
                    CommanWidget.textLayout(strings.and, 11, Colors.black),
                    SizedBox(width: 3),
                    CommanWidget.textLayoutWithWeight('1234', 11, Colors.black,FontWeight.bold),
                    SizedBox(width: 5,),
                    CommanWidget.textLayoutWithWeight(strings.others, 10, Colors.black,FontWeight.bold)
                  ],
                ),
              )

            ],
          ),
        ),
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
            padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 5.0,bottom: 5.0),
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
            Icon(Icons.disabled_visible_rounded,size: 30,),
            Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child:  CommanWidget.textLayout(strings.not_interested,13,Colors.black),
            ),
            ],
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
            children: [
            Icon(Icons.account_circle_outlined,size: 30,),
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
            Container(height: 1,width:  MediaQuery.of(context).size.width,
            color: Color(0x86E0D8D8),),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
            children: [
            Icon(Icons.dehaze,size: 30),
            Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child:  CommanWidget.textLayout(strings.manage_suggested_content,13,Colors.black),
            ),
            ],
            ),
            ),

            ],
            ),
            ],
            ),
            )
              ],
            );
          });
    });
  }

}
