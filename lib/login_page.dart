 import 'package:flutter/material.dart';
 import 'sign_of_the_day.dart';

 class LoginPage extends StatefulWidget {
   static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'tag',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius:100.0,
          child: Image.asset('images/ily.png'),
          ),
      );
    
    final email = TextFormField(
      keyboardType:TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'zoe.tagboto@ashesi.edu.gh',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
        
      )
    );


    final password = TextFormField(
      autofocus: false,
      initialValue: 'password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        
      )
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical:16.0),
      child:Material(
        borderRadius: BorderRadius.circular(60.0),
        shadowColor: Color(hexColor('#f89a62')),//Colors.lightBlueAccent.shade100,
        color:Color(hexColor('#f89a62')),//Colors.lightBlueAccent,
        elevation: 9.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed:(){
              Navigator.of(context).pushNamed(SignOfTheDay.tag);
          },
          
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        )

      ),
      );

    final forgotLabel = TextButton(
      child: Text('Forgot password?',
      style: TextStyle(color:Colors.black54),
      ),
      onPressed: (){},

    );

    final welcome = Padding(
      padding: EdgeInsets.only(left:60.0,right: 8.0),
      child: Text(
        'GSL APP',
        style: TextStyle(
          fontSize: 52.0,
          color: Colors.black),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: 
      ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left:24.0, right:24.0) ,
        children: <Widget>[
          logo,
          welcome,
          SizedBox(height:48.0),
          email,
          SizedBox(height:8.0),
          password,
          SizedBox(height:24.0),
          loginButton,
          forgotLabel,
        ],
      ),
      )

      );


    
  }
   hexColor (String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
}
}