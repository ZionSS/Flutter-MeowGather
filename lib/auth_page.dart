
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meowgather/login_page.dart';
import 'package:meowgather/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  ImageProvider imageProvider = NetworkImage(
        "https://i.pinimg.com/originals/0b/00/d8/0b00d83e2b4365b96b9806b36be60332.jpg");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body : Container(
          decoration: BoxDecoration(
            image :  DecorationImage(
              image: AssetImage('assets/logo/bg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)
              )
              
          ),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children :[ 
            Image.asset('assets/logo/logo_app.png',
          height: 175,
          width: 175,)
          ,
          SizedBox(height: 25,width: 25,),
           SizedBox(width : double.infinity),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => RegisterPage()));
              }, 
                child : Text('Sign Up',style : TextStyle(color: Colors.amber[400]),),style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 25,width: 25,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
            }, child : Text('Sign In',style : TextStyle(color: Colors.amber[400]),),style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 100,)

          ]),
        )
    );
  }
}