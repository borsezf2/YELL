import 'package:flutter/material.dart';
import 'package:prototype/unit1.dart';

class first extends StatefulWidget {
  String semID;
  first(this.semID);



  @override
  _firstState createState() => _firstState(semID);
}

class _firstState extends State<first> {

  String semID;
  String unitID = "";

  _firstState(this.semID);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("first"),
        centerTitle: true,
      ),
      body: new Container(
        alignment: Alignment(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Sem 1",style: TextStyle(fontSize: 30)),
            Padding(padding: EdgeInsets.only(top: 30)),
            new Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: <Widget>[
                RaisedButton(
                    onPressed: (){
                      setState(() {
                        unitID = "1";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>unit1(semID,unitID)));
                      print("############################################\npage1 to first to unit1 page semID = $semID and unitID = $unitID");
                    },
                  child: Text("Unit 1"),
                  splashColor: Colors.deepOrangeAccent,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  padding: EdgeInsets.only(right: 50,left: 50,bottom: 30,top: 30),

                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      unitID = "2";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>unit1(semID,unitID)));
                  },
                  child: Text("Unit 2"),
                  splashColor: Colors.deepOrangeAccent,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  padding: EdgeInsets.only(right: 50,left: 50,bottom: 30,top: 30),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      unitID = "3";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>unit1(semID,unitID)));
                  },
                  child: Text("Unit 3"),
                  splashColor: Colors.deepOrangeAccent,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  padding: EdgeInsets.only(right: 50,left: 50,bottom: 30,top: 30),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      unitID = "4";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>unit1(semID,unitID)));
                  },
                  child: Text("Unit 4"),
                  splashColor: Colors.deepOrangeAccent,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  padding: EdgeInsets.only(right: 50,left: 50,bottom: 30,top: 30),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      unitID = "5";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>unit1(semID,unitID)));
                  },
                  child: Text("Unit 5"),
                  splashColor: Colors.deepOrangeAccent,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  padding: EdgeInsets.only(right: 50,left: 50,bottom: 30,top: 30),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      unitID = "file";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>unit1(semID,unitID)));
                  },
                  child: Text("FILE"),
                  splashColor: Colors.deepOrangeAccent,
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  padding: EdgeInsets.only(right: 50,left: 50,bottom: 30,top: 30),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
