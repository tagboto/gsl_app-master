import 'package:flutter/material.dart';
import 'classes.dart';

class TutorialPage extends StatelessWidget {
  static String tag = 'topic-page';
  final Category category;

  TutorialPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //app bar
    final screenWidth = MediaQuery.of(context).size.width;
    final appBar = AppBar(
      backgroundColor: Color(hexColor('#f89a62')),
      elevation: 5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text(category.name),
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

    createSignTile(Sign sign) => Container(
        width: screenWidth,
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(children: <Widget>[
              CircleAvatar(
                radius: 150.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(sign.image),
              ),
              Text(sign.text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42.0,
                      fontFamily: 'Quicksand-Light',
                      color: Color(hexColor('#f89a62'))))
            ])));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0.0),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children:
                category.signs.map((sign) => createSignTile(sign)).toList()),
      ),
    );
  }

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }
}
