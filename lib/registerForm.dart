import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdreamsapp/HomePage.dart';

class registerForm extends StatefulWidget {
  @override
  _registerPage createState() => _registerPage();
}

class _registerPage extends State<registerForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Rüyamda Gördüm',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        )
        ),
            body: registerPageDesign(),
    );
  }
}

class registerPageDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _registerPageDesign(context);
  }
}

Widget _registerPageDesign(BuildContext context) {

  List<String> _genders = ['Kadın', 'Erkek', 'Diğer'];


  final nameField = Material(
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "isminiz",
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
        hintText: "Şifre",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        fillColor: Colors.white, filled: true,
      )
      )
  );

  final emailField = Material(
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        fillColor: Colors.white, filled: true,
      )
    )
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
            MaterialPageRoute(builder: (context) => HomePage())
        );
      },
      child: Text( "Kayıt Ol",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),

    ),
  );

  final genderdropdown = Material(
    borderRadius: BorderRadius.circular(30.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

        ),
        hint: Text('Cinsiyetiniz'),
        onChanged: (newValue) {
          //setState(());
        },
        items: _genders.map((gender) {
          return DropdownMenuItem(
            child: new Text(gender),
            value: gender,
          );
        }).toList(),
      ),
  );

  final  birtdatebtn = Material(
    borderRadius: BorderRadius.circular(30.0),
    child: Container(
      height: 48,
      child: CupertinoDatePicker(
        minimumYear: 1900,
        maximumYear: DateTime.now().year - 12,
        mode: CupertinoDatePickerMode.date,
        use24hFormat: false,
        initialDateTime: DateTime(DateTime.now().year - 12),
        onDateTimeChanged: (DateTime newDateTime) {
          print(newDateTime);
        },

      ),
    ),);




  TextEditingController dateCtl = TextEditingController();

  final btn = TextFormField(
    controller: dateCtl,
    decoration: InputDecoration(
      labelText: "Date of birth",
      hintText: "Ex. Insert your dob",),
    onTap: () async{
      DateTime date = DateTime(1900);
      FocusScope.of(context).requestFocus(new FocusNode());
       CupertinoDatePicker(
        minimumYear: 1900,
        maximumYear: DateTime.now().year - 12,
        mode: CupertinoDatePickerMode.date,
        use24hFormat: false,
        initialDateTime: DateTime(DateTime.now().year - 12),
        onDateTimeChanged: (DateTime newDateTime) {
          print(newDateTime);
        },
      );

      dateCtl.text = date.toIso8601String();
      },
  );


  final birtdate = Material(
    borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "yıl"
        ),
        onTap: (){
              FocusScope.of(context).requestFocus(new FocusNode());

        },),
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
                    nameField,

                    SizedBox(height: 10.0),
                    emailField,

                    SizedBox(height: 10.0),
                    passwordField,

                    SizedBox(height: 10.0),
                    genderdropdown,

                    SizedBox(height: 10.0),
                    birtdatebtn,

                    SizedBox(height: 15.0),
                    registerbtn,


                  ]
              )
          )
      )
  );

}
