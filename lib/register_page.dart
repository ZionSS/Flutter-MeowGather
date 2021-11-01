import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meowgather/auth_page.dart';
import 'package:meowgather/MainPage/home_page.dart';
import 'package:meowgather/navigation_bar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late   String _email , _password;
  final auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset('assets/logo/logo_app.png',
          height: 75,
          width: 75,),
          SizedBox(width : double.infinity),
          SizedBox(height: 25,width: 25,),
          Text("Meow Gather <3",style: TextStyle(color: Colors.amber[500],fontSize: 25,fontWeight: FontWeight.bold),),
          /*Padding(padding: EdgeInsets.only(left: 50,right: 50,bottom: 10),
            child: TextField(decoration: 
            InputDecoration(
              labelText: "Username",
              floatingLabelStyle: TextStyle(color: Colors.amber[600],fontSize: 25) ,
              ),
              onChanged: (value){ 
                setState(() {
                  _username= value.trim();
                  print(_username);
                });
                print(value);
              },
            ),
          ),*/
          Padding(padding: EdgeInsets.only(left: 50,right: 50,bottom: 10),
            child: TextField(decoration: 
            InputDecoration(
              labelText: "Email",
              floatingLabelStyle: TextStyle(color: Colors.amber[600],fontSize: 25) ,
              ), 
              onChanged: (value){ 
                setState(() {
                  _email= value.trim();
                  print(_email);
                });
                print(value);
              },
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 50,right: 50,bottom: 10),
            child: TextField(decoration: 
            InputDecoration(
              labelText: "Password",
              floatingLabelStyle: TextStyle(color: Colors.amber[600],fontSize: 25) ,
              ),
              onChanged: (value){ 
                setState(() {
                  _password= value.trim();
                  print(_password);
                });
                print(value);
              },
              obscureText: true,
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AuthPage()));
            }, icon: Icon(Icons.arrow_back_rounded,color: Colors.amber[400],), label: Text("Back",style: TextStyle(color: Colors.amber[400]),) ,style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ElevatedButton.icon(onPressed: () async { 
              try{
                  await auth.createUserWithEmailAndPassword(email: _email, password: _password);
                  print("Register");
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationBar()));
              }
              on FirebaseAuthException catch(e){
                print(e);
              }
            }, icon: Text('Sign Up',style : TextStyle(color: Colors.amber[400])),label : Icon(Icons.arrow_forward_rounded,color: Colors.amber[400],),style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
          ],
        )
        ],)
    );
  }
}