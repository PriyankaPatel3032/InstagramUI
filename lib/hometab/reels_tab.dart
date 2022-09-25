import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/comman/comman_widget.dart';
import 'package:video_player/video_player.dart';

class ReelsTab extends StatefulWidget {
  const ReelsTab({Key? key}) : super(key: key);

  @override
  _ReelsTabState createState() => _ReelsTabState();
}

class _ReelsTabState extends State<ReelsTab> {
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;
  late FlickManager flickManager;
  late FlickControlManager flickControlManager;

  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            const Icon(
              Icons.favorite,
              color: Colors.red,
            );
          },
          child: Container(
            child: FlickVideoPlayer(
              flickManager: flickManager,
              flickVideoWithControls: FlickVideoWithControls(),
            ),
          ),
        ),

        //Camera
        _camera(),
        //bottom
        _bottom()
        //FURTHER IMPLEMENTATION
      ],
    ));
  }

  Widget _camera() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0, right: 15.0),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 25,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _bottom() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 27,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: CommanWidget.textLayoutWithWeight(
                          "10k", 12, Colors.white, FontWeight.normal),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: CommanWidget.textLayoutWithWeight(
                          "44", 12, Colors.white, FontWeight.normal),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10),
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
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
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
                        SizedBox(
                          width: 10,
                        ),
                        CommanWidget.textLayoutWithWeight("Priyanka Patel", 13,
                            Colors.white, FontWeight.bold),
                        SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: CommanWidget.textLayoutWithWeight(
                              "Follow", 14, Colors.white, FontWeight.bold),
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                  child: CommanWidget.textLayoutWithWeight(
                      "Always ready for new Learning",
                      12,
                      Colors.white,
                      FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_forward,
                      size: 17,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: CommanWidget.textLayoutWithWeight("Original Audio",
                          12, Colors.white, FontWeight.normal),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.person_outline,
                        size: 17,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: CommanWidget.textLayoutWithWeight("priyanka_patel",
                          12, Colors.white, FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
