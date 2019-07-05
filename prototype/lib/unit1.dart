import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:prototype/Fullscreen.dart';

class unit1 extends StatefulWidget {
  String semID,unitID,FinalID;
  unit1(this.semID, this.unitID)
  {
    String imgURL ="imgURL";
    FinalID = semID + unitID + imgURL;

    print("############################################\nsemID = $semID unitID = $unitID finalID = $FinalID ");

  }

  @override
  _unit1State createState() => _unit1State(semID, unitID, FinalID);
}

class _unit1State extends State<unit1> {


  String semID,unitID,FinalID;

  _unit1State(this.semID, this.unitID, this.FinalID);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text("Unit 1"),
        ),
        body: new Body(semID, unitID, FinalID));
  }

}

class Body extends StatefulWidget {
  String semID,unitID;
  String FinalID ;

  Body(this.semID, this.unitID, this.FinalID);

  @override
  _BodyState createState() => _BodyState(semID, unitID);
}

class _BodyState extends State<Body> {

  String FinalID ;

  String semID, unitID;
  String imgURL ="imgURL";




  List<DocumentSnapshot> PhotosList;


  //****************************************************************************************8
  Firestore firestore = Firestore();

  _BodyState(this.semID , this.unitID)
  {
//    setState(() {
//      FinalID = semID + unitID;
//    });
  }

  void set()
  {
    setState(() {
      FinalID = semID + unitID + imgURL;
    });
    print("############################################\nsemID = $semID unitID = $unitID finalID = $FinalID ");

  }

  void conn() async{
    await firestore.settings(timestampsInSnapshotsEnabled: true);
  }

  //####cs1
//  "cs11imgURL"
  final CollectionReference CRcs11imgURL = Firestore.instance.collection("cs11imgURL");
  final CollectionReference CRcs12imgURL = Firestore.instance.collection("cs12imgURL");
  final CollectionReference CRcs13imgURL = Firestore.instance.collection("cs13imgURL");
  final CollectionReference CRcs14imgURL = Firestore.instance.collection("cs14imgURL");
  final CollectionReference CRcs15imgURL = Firestore.instance.collection("cs15imgURL");
  //####cs2
  final CollectionReference CRcs21imgURL = Firestore.instance.collection("cs21imgURL");
  final CollectionReference CRcs22imgURL = Firestore.instance.collection("cs22imgURL");
  final CollectionReference CRcs23imgURL = Firestore.instance.collection("cs23imgURL");
  final CollectionReference CRcs24imgURL = Firestore.instance.collection("cs24imgURL");
  final CollectionReference CRcs25imgURL = Firestore.instance.collection("cs25imgURL");
  //####cs3
  final CollectionReference CRcs31imgURL = Firestore.instance.collection("cs31imgURL");
  final CollectionReference CRcs32imgURL = Firestore.instance.collection("cs32imgURL");
  final CollectionReference CRcs33imgURL = Firestore.instance.collection("cs33imgURL");
  final CollectionReference CRcs34imgURL = Firestore.instance.collection("cs34imgURL");
  final CollectionReference CRcs35imgURL = Firestore.instance.collection("cs35imgURL");
  //####cs4
  final CollectionReference CRcs41imgURL = Firestore.instance.collection("cs41imgURL");
  final CollectionReference CRcs42imgURL = Firestore.instance.collection("cs42imgURL");
  final CollectionReference CRcs43imgURL = Firestore.instance.collection("cs43imgURL");
  final CollectionReference CRcs44imgURL = Firestore.instance.collection("cs44imgURL");
  final CollectionReference CRcs45imgURL = Firestore.instance.collection("cs45imgURL");
  //####cs5
  final CollectionReference CRcs51imgURL = Firestore.instance.collection("cs51imgURL");
  final CollectionReference CRcs52imgURL = Firestore.instance.collection("cs52imgURL");
  final CollectionReference CRcs53imgURL = Firestore.instance.collection("cs53imgURL");
  final CollectionReference CRcs54imgURL = Firestore.instance.collection("cs54imgURL");
  final CollectionReference CRcs55imgURL = Firestore.instance.collection("cs55imgURL");
  //####cs6
  final CollectionReference CRcs61imgURL = Firestore.instance.collection("cs61imgURL");
  final CollectionReference CRcs62imgURL = Firestore.instance.collection("cs62imgURL");
  final CollectionReference CRcs63imgURL = Firestore.instance.collection("cs63imgURL");
  final CollectionReference CRcs64imgURL = Firestore.instance.collection("cs64imgURL");
  final CollectionReference CRcs65imgURL = Firestore.instance.collection("cs65imgURL");
  //####cs7
  final CollectionReference CRcs71imgURL = Firestore.instance.collection("cs71imgURL");
  final CollectionReference CRcs72imgURL = Firestore.instance.collection("cs72imgURL");
  final CollectionReference CRcs73imgURL = Firestore.instance.collection("cs73imgURL");
  final CollectionReference CRcs74imgURL = Firestore.instance.collection("cs74imgURL");
  final CollectionReference CRcs75imgURL = Firestore.instance.collection("cs75imgURL");
  //####cs8
  final CollectionReference CRcs81imgURL = Firestore.instance.collection("cs81imgURL");
  final CollectionReference CRcs82imgURL = Firestore.instance.collection("cs82imgURL");
  final CollectionReference CRcs83imgURL = Firestore.instance.collection("cs83imgURL");
  final CollectionReference CRcs84imgURL = Firestore.instance.collection("cs84imgURL");
  final CollectionReference CRcs85imgURL = Firestore.instance.collection("cs85imgURL");



  StreamSubscription<QuerySnapshot> subscription11,subscription12;

  @override
  void initState() {
    // TODO: implement initState
    set();

    super.initState();
    conn();

    subscription11 = CRcs11imgURL.snapshots().listen((datasnapshot){
      setState(() {

        if(semID=="cs1" && unitID=="1") {
          PhotosList = datasnapshot.documents;
        }
      });
    });

    subscription12 = CRcs12imgURL.snapshots().listen((datasnapshot){
      setState(() {

        if(semID=="cs1" && unitID=="2") {
          PhotosList = datasnapshot.documents;
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription11?.cancel();
    super.dispose();
  }

  //****************************************************************************************8

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PhotosList!=null?
        new StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: PhotosList.length,
            itemBuilder: (context, i){

              String imgURL = PhotosList[i].data['URL'];
              return new Material(
                elevation: 10.0,

                borderRadius: BorderRadius.all(Radius.circular(10)),

                child: new InkWell(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreenImagePage(imgURL))),

                  child: new Hero(
                      tag: imgURL,
                      child: new FadeInImage(
                          placeholder: AssetImage("img/loadingblue.gif"),
                          image: new NetworkImage(imgURL),
                        fit: BoxFit.cover,
                      )
                  ),
                ),

              );
            },//itemBuilder

          staggeredTileBuilder: (i)=>new StaggeredTile.count(2, 3),
          padding: const EdgeInsets.all(8.0),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,

        ):new Center(
        child:  new CircularProgressIndicator()
    )

    );
  }
}
