import 'package:flutter/material.dart';
import 'dart:async';
import 'package:prototype/SecondPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "protoype",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  //*****************************************************************************************************

  String email = "";
  String username = "";
  String photo = "";

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async{

    GoogleSignInAccount GSA = await _googleSignIn.signIn();
    GoogleSignInAuthentication GSAuth = await GSA.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: GSAuth.accessToken,
      idToken: GSAuth.idToken,
    );


    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("signed in " + user.displayName);



    setState(() {
      email = user.email;
      username = user.displayName;
      photo = user.photoUrl;

      if(email!="")
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(email, username, photo)));

    });

    return user;
  }

  //*****************************************************************************************************




  @override
  void initState() {
    // TODO: implement initState

    super.initState();

   // Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage())));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: new Stack(
        fit: StackFit.expand,

        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                  child: new Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image(image: AssetImage("img/logo.ico")),
                          Padding(padding: EdgeInsets.all(6)),
                          Text("APPLICATION NAME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: new Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: new Column(
                        children: <Widget>[
                            RaisedButton(
                              onPressed: _signIn,
                              child: Text("SIGN IN"),
                              color: Colors.blue[400],
                              textColor: Colors.white,
                              splashColor: Colors.yellow,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                              padding: EdgeInsets.only(right: 100,left: 100,bottom: 30,top: 30),

                            ),
                          new Padding(padding: const EdgeInsets.all(3)),
                          new CircularProgressIndicator(),
                            new Padding(padding: const EdgeInsets.all(3)),
                          new Text("SIGINING IN WAIT !!"),

                        ],
                      ),
                    ),
                  ))
            ],
          )

        ],

      )
    );
  }

  _HomePageState()
  {
    _signIn();
  }



}

