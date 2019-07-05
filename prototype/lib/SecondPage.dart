import 'package:flutter/material.dart';
import 'package:prototype/Page1.dart';
import 'package:prototype/Page2.dart';
import 'package:prototype/Page3.dart';
import 'package:prototype/Page4.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:prototype/main.dart';

//
//String adIDBanner ="ca-app-pub-3940256099942544/6300978111";
//String adIDInter ="ca-app-pub-3940256099942544/1033173712";
//
String adIDBanner ="ca-app-pub-2711989278901189/5096340162";
String adIDInter ="ca-app-pub-2711989278901189/3717532086";

class SecondPage extends StatefulWidget {
  String email ;
  String username ;
  String photo ;
  SecondPage(String this.email, String this.username, String this.photo);

  @override
  SecondPageState createState() => SecondPageState(email, username, photo);
}

class SecondPageState extends State<SecondPage> with SingleTickerProviderStateMixin{

  String email ;
  String username ;
  String photo ;

  SecondPageState(this.email, this.username, this.photo);
  TabController tabController;
  //*****************************************************************************************************


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

     });

      return user;
    }

    void _singOut(){
       _googleSignIn.signOut();
       print("sign out");
       setState(() {
         email = "";
         username = "";
         photo = "";
       });
       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
  //*****************************************************************************************************

   static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>["student","Free","engineering","notes"],
    contentUrl: 'https://flutter.io',
    birthday: DateTime.now(),
    childDirected: true,
    designedForFamilies: true,
    testDevices: <String>["2A79BF7338C977D2E18C0026026E3EAD"], // Android emulators are considered test devices
  );

  BannerAd myBanner = BannerAd(
    // Replace the testAdUnitId with an ad unit id from the AdMob dash.
    // https://developers.google.com/admob/android/test-ads
    // https://developers.google.com/admob/ios/test-ads
    adUnitId: adIDBanner,
    size: AdSize.smartBanner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );

  InterstitialAd myInterstitial = InterstitialAd(
    // Replace the testAdUnitId with an ad unit id from the AdMob dash.
    // https://developers.google.com/admob/android/test-ads
    // https://developers.google.com/admob/ios/test-ads
    adUnitId: adIDInter,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );






  //*****************************************************************************************************





  @override
  void initState()
  {
    super.initState();
    myBanner..load()..show();
  //  myInterstitial..load()..show();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose()
  {
    myBanner?.dispose();
    myInterstitial?.dispose();
    tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(

        title: Text("hey"),
        bottom: new TabBar(

          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.desktop_mac),
            ),
            new Tab(
              icon: Icon(Icons.build),
            ),
            new Tab(
              icon: Icon(Icons.flash_on),
            ),
            new Tab(
              icon: Icon(Icons.account_balance),
            ),
          ],),
      ),
      //*****************************************************************************************************
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(username),
              accountEmail: Text(email),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(photo),),
            ),
            ListTile(
              title: Text("sing in"),
              trailing: Icon(Icons.import_export),
              onTap: _signIn
            ),
            ListTile(
              title: Text("sing out"),
              trailing: Icon(Icons.call_missed_outgoing),
              onTap: _singOut,
            ),


          ],
        ),
      ),
      //*****************************************************************************************************
      body:  new TabBarView(

        controller: tabController,
        children: <Widget>[
          new Page1(email),
          new Page2(),
          new Page3(),
          new Page4(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.black12,
        child: new Container(
          height: 50,
          color: Colors.redAccent,
          child: new Center(
            child: new Text("ADS"),
          ),
        ),
    ),
    );
  }
}
//                new SliverList(
//               delegate: new SliverChildBuilderDelegate(
//                   (context,index) =>
//                       new ListTile( title: Text("List $index"),)
//               )),