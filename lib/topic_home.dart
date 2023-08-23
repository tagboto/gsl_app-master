import 'package:my_gsl_app/data.dart';
import 'package:my_gsl_app/classes.dart';
import 'package:flutter/material.dart';
import 'package:my_gsl_app/tutorials.dart';
import 'rating_bar.dart';

class TopicPage extends StatelessWidget {
  static String tag = 'topic-page';
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      backgroundColor: Color(hexColor('#f89a62')),
      elevation: 5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text('Tutorials'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Quicksand-Light'),
    );

    ///create book tile hero
    createTile(SignTopic topic) => Hero(
          tag: topic.title,
          child: Material(
            borderRadius: new BorderRadius.circular(30.0),
            elevation: 5.0,
            shadowColor: Color(hexColor('#f89a62')),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TutorialPage(category: topic.category),
                  ),
                );
              },
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(topic.image),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(topic.title),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: RatingBar(rating: topic.rating),
                )
              ]),
            ),

            //text('${book.title} pages', color: Colors.black38, size: 12)
          ),
        );

    ///create  grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 4 / 5,
            crossAxisCount: 2,
            mainAxisSpacing: 60.0,
            crossAxisSpacing: 20.0,
            children: signTopics.map((topic) => createTile(topic)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors
          .white, //Colors.lightBlue.shade100, //Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }
}
