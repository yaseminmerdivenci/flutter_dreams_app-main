import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdreamsapp/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Rüyamda Gördüm',
    style: TextStyle(fontSize: 20.0, color: Colors.white),
    ),),
    body: HomePageDesign(),
    drawer: Drawer(
      child: Container(
        //width: 200,height: 100,
        child: ListView(
          padding: EdgeInsets.zero,

          children: <Widget>[ //          <-- ListTile.divideTiles
            UserAccountsDrawerHeader (
              accountName: Text("Yasemin Merdivenci"),
              accountEmail: Text("xxx@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/avatar_man.jpeg"),
              ),
            ),
          ListTile(
            title: Text("Anasayfa"),
            leading: Icon(Icons.home, color: Colors.black,),
            onTap: (){
              Navigator.pop(context, HomePageDesign());
            },
          ),

          ListTile(
            title: Text("Profilim"),
            leading: Icon(Icons.person, color: Colors.black,),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Yorumlarım"),
            leading: Icon(Icons.message, color: Colors.black,),
            onTap: (){
              Navigator.pop(context);
            },
          ),

          ListTile(
            title: Text("Rüya Defterim"),
            leading: Icon(Icons.book, color: Colors.black,),
            onTap: (){
              Navigator.pop(context, LoginHomePage());
            },
          ),
            Container(
              height: 1.0,
              color: Color(0xFFDDDDDD),
            ),
          ListTile(
            title: Text("Çıkış Yap"),
            leading: Icon(Icons.logout, color: Colors.black,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => LoginHomePage()));

            },
          ),
      ],
    ),
        ),
    ),
      );

  }
}

class HomePageDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _HomePageDesign(context);
  }
}

Widget _HomePageDesign(BuildContext context) {
  final navigator_drawer_Text = Center(
    child: Text("Hoş geldin!"),
  );

  final sendbtn = Material(
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.indigoAccent,
    child: MaterialButton(
        minWidth: MediaQuery.of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
        onPressed: () {
          //yorum gönderme butonu
        },
        child: Text( "Rüyamda Gördüm",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),

          ),
  );

  return Center(
    child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/69f5d62f0ab552e24274ffd5b02bbed2.jpeg"),
            fit: BoxFit.cover,)
      ),
        child: Padding(
          padding: const EdgeInsets.all(36.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 10.0),
              sendbtn,

         ]
        )
  )
  )
  );

}

