import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramflutter/hometab/home/post.dart';

import 'home/story.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Story(), Post()],
      ),
    );
  }
}
