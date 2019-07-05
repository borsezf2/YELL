import 'package:flutter/material.dart';
import 'package:zoomable_image/zoomable_image.dart';
import 'package:prototype/SecondPage.dart';
import 'package:firebase_admob/firebase_admob.dart';


String adIDBanner ="ca-app-pub-2711989278901189/5096340162";
String adIDInter ="ca-app-pub-2711989278901189/3717532086";

class FullScreenImagePage extends StatelessWidget {

  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>[],
    contentUrl: 'https://flutter.io',
    birthday: DateTime.now(),
    childDirected: true,
    designedForFamilies: true,
    testDevices: <String>["2A79BF7338C977D2E18C0026026E3EAD"], // Android emulators are considered test devices
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
  //8***********************************************************************************

  @override
  void dispose()
  {


    myInterstitial?.dispose();

  }


  String imgURL;
  FullScreenImagePage(this.imgURL);

  final LinearGradient backgroundGradient = new LinearGradient(
      colors: [new Color(0x10000000), new Color(0x30000000)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SizedBox.expand(
        child: new Container(
          decoration: new BoxDecoration(gradient: backgroundGradient),
          child: new Stack(
            children: <Widget>[
              new Align(
                alignment: Alignment.center,
                child: new Hero(
                  tag: imgURL,
                  child: new ZoomableImage(
                    new NetworkImage(imgURL),
                    placeholder: new Image(image: AssetImage("img/loadingblue.gif"),fit: BoxFit.cover,),
                    maxScale: 4.0,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              new Align(
                alignment: Alignment.topCenter,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      leading: new IconButton(
                        icon: new Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          myInterstitial..load()..show();
                          Navigator.of(context).pop();

                        }
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}