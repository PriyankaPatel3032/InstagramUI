import 'package:flutter/material.dart';
import 'package:instagramflutter/hometab/home_tab.dart';
import 'package:instagramflutter/hometab/like_tab.dart';
import 'package:instagramflutter/hometab/profile_tab.dart';
import 'package:instagramflutter/hometab/reels_tab.dart';
import 'package:instagramflutter/hometab/search_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black54),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final tab = [HomeTab(), SearchTab(), ReelsTab(), LikeTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[_selectedIndex],
      bottomNavigationBar: buildMynavigationBar(context),
    );
  }

  buildMynavigationBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
            icon: _selectedIndex == 0
                ? const Icon(
                    Icons.home,
                    size: 25,
                  )
                : const Icon(Icons.home_outlined, size: 25)),
        IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
            icon: _selectedIndex == 1
                ? const Icon(
                    Icons.search_sharp,
                    size: 25,
                  )
                : const Icon(Icons.search, size: 25)),
        IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            icon: _selectedIndex == 2
                ? const Icon(
                    Icons.video_collection,
                    size: 25,
                  )
                : const Icon(Icons.video_collection_outlined, size: 25)),
        IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 3;
              });
            },
            icon: _selectedIndex == 3
                ? const Icon(
                    Icons.favorite,
                    size: 25,
                  )
                : const Icon(
                    Icons.favorite_border,
                    size: 25,
                  )),
        IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 4;
              });
            },
            icon: _selectedIndex == 4
                ? const Icon(
                    Icons.person_rounded,
                    size: 25,
                  )
                : const Icon(Icons.person_outline, size: 25)),
      ],
    );
  }
}
