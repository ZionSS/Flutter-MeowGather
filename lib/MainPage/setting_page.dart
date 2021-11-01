import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meowgather/auth_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({ Key? key }) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children : [ 
        SizedBox(width: double.infinity,),
        Container(
          child: SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
            onPressed: () { 
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AuthPage()));
             },
            child: Text("LOG OUT",
            style: TextStyle(color: Colors.amber[600],fontWeight: FontWeight.bold,fontSize: 20),
            ),
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white70),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    side: BorderSide(color: Colors.red)
                    ),
                    ),
            ),
        ),
          )
        )
      ]
    );
  }
}