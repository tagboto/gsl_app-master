import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sign_of_the_day.dart';
import 'topic_home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    SignOfTheDay.tag: (context) => SignOfTheDay(),
    TopicPage.tag: (context) => TopicPage(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GSL APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //color: Color(hexColor('#f89a62')),//s.lightBlue,

        fontFamily: 'Quicksand-Light',
        platform: TargetPlatform.iOS,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
