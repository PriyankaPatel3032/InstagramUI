import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagramflutter/hometab/home/search/explore.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {

  final List<String> images = [
    "https://imgflip.com/s/meme/Unpopular-Opinion-Puffin.jpg",
    "https://imgflip.com/s/meme/Grumpy-Cat.jpg",
    "https://imgflip.com/s/meme/Lazy-College-Senior.jpg",
    "https://imgflip.com/s/meme/Evil-Toddler.jpg",
    "https://imgflip.com/s/meme/College-Freshman.jpg",
    "https://imgflip.com/s/meme/confession-kid.jpg",
    "https://imgflip.com/s/meme/I-Should-Buy-A-Boat-Cat.jpg",
    "https://imgflip.com/s/meme/Unhelpful-High-School-Teacher.jpg",
    "https://imgflip.com/s/meme/Engineering-Professor.jpg",
    "https://imgflip.com/s/meme/Surprised-Koala.jpg",
    "https://imgflip.com/s/meme/Business-Cat.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 45,
            child: CupertinoSearchTextField(
              onChanged: (String value) {
                print('The text has changed to: $value');
              },
              onSubmitted: (String value) {
                print('Submitted text: $value');
              },
            ),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Explore(  image:images[index])),


                    );                  },
                  child: _item(index)),
              staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              crossAxisSpacing: 0.0,
            ),
          ),
        ],
      )),
    );
  }

  Widget _item(pos) {
    return Card(elevation: 2, child: Image.network(images[pos]));
  }
}
