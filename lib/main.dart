import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterdreamsapp/HomePage.dart';
import 'package:flutterdreamsapp/registerForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
        const Locale('en'), // English
        const Locale('tr'), //
     ],
      debugShowCheckedModeBanner: false,
      title: 'Dream App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigo[600],
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Rüyamda Gördüm',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
    ),),
        body: LoginHomePage()),
    );
  }
}

class LoginHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHomePage(context);
  }
}

Widget _LoginHomePage(BuildContext context){

  final emailField = Material(
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
    obscureText: false,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      hintText: "Kullanıcı adı",
      border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        fillColor: Colors.white, filled: true,
    )
    )
  );

  final passwordField = Material(
    borderRadius: BorderRadius.circular(30.0),
  child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Şifreniz",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          fillColor: Colors.white, filled: true,
      )
  )
  );

    final loginbtn = Material(
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.indigoAccent,
    child: MaterialButton(
      minWidth: MediaQuery.of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
      onPressed: (){
        //homePage ekranı açılacak
        Navigator.push(
            context,
        MaterialPageRoute(builder: (context) => HomePage())
        );

      },
      child: Text( "Giriş yap",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),

    ),
  );


  final registerbtn = Material(
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.indigoAccent,
    child: MaterialButton(
      minWidth: MediaQuery.of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
      onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => registerForm())
        );
      },
      child: Text( "Kayıt Ol",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),

    ),
  );

  return Center(
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/69f5d62f0ab552e24274ffd5b02bbed2.jpeg"),
          fit: BoxFit.cover,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            SizedBox(height: 10.0),
            emailField,

            SizedBox(height: 10.0),
            passwordField,

            SizedBox(height: 15.0),
            loginbtn,

            SizedBox(height: 10.0),
            registerbtn,


          ]
        )
      )
    )
  );

}

