import 'package:flutter/material.dart';
import 'topic_home.dart';

class SignOfTheDay extends StatelessWidget {
  static String tag = 'sign-of-the-day';
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 5,
      backgroundColor: Color(hexColor('#f89a62')),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text('Sign of the Day'),
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

    final signcard = Hero(
      tag: 'hero',
      child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
              radius: 150.0,
              backgroundColor: Colors.transparent,
              backgroundImage:
                  AssetImage('images/gifs/games_activities/design.gif'))),
    );

    final signName = Padding(
      padding: EdgeInsets.all(8.0),
      child: RichText(
          text: TextSpan(
              text: 'Word',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22.0,
                  fontFamily: 'Quicksand-Light',
                  color: Color(hexColor('#f89a62'))), //Colors.white,),
              children: <TextSpan>[
            TextSpan(
                text: ': Design',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Quicksand-Light',
                  fontWeight: FontWeight.bold,
                  color: Color(hexColor('#f89a62')), // Colors.white,
                ))
          ])
          //'Word: Brother',
          //style: TextStyle(
          //fontSize: 22.0,
          //color: Colors.white),
          // ),
          ),
    );

    final nextBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      //padding: EdgeInsets.only(left:150.0,top: 30.0),
      child: Material(
          borderRadius: BorderRadius.circular(60.0),
          shadowColor: Colors.white,
          //color:Colors.lightBlueAccent,
          color: Color(hexColor('#f89a62')),
          elevation: 6.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              Navigator.of(context).pushNamed(TopicPage.tag);
            },
            child: Text('Learn More', style: TextStyle(color: Colors.white)),
          )),
    );

    final body = Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          //Color(hexColor('#f89a62')),
          Colors.white24,
          Colors.white30
        ])),
        child: Column(
          children: <Widget>[
            signcard,
            signName,
            nextBtn,
          ],
        ));
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }
}
