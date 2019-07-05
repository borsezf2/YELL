import 'package:flutter/material.dart';
import 'package:prototype/first.dart';
import 'package:prototype/SecondPage.dart';

//COMPUTER SCIENCE

class Page1 extends StatefulWidget {
  String email;
  Page1(String this.email);



  @override
  _Page1State createState() => _Page1State(email);
}

class _Page1State extends State<Page1> {
  String email;
  _Page1State(String this.email);


String semID = "";


  @override
  Widget build(BuildContext context) {
    return Container(

      child: new Center(

        child: new SingleChildScrollView(
          child: new Column(

            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: 400,
                child: Text("                                 COMPUTER SCIENCE\n sem                                                                             sub ",style: TextStyle(fontSize: 15,color: Colors.white),),
                color: Colors.blueAccent,

              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Padding(padding: EdgeInsets.all(2)),
                  MaterialButton(
                    child: Text("First",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs1";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                      print("############################################\npage1 to first page semID = $semID");
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Second",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs2";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Third",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs3";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Fouth",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs4";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Fith",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs5";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Sixth",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs6";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Seventh",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs7";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(2)),

                  MaterialButton(
                    child: Text("Eighth",style: TextStyle(fontSize: 30,color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        semID = "cs8";
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>first(semID)));
                    },
                    color: Colors.blue,
                    height: 100,
                    minWidth: 172,
                    splashColor: Colors.deepOrange,
                  ),

                  Padding(padding: EdgeInsets.all(2)),

                  Container(
                    padding: EdgeInsets.all(5),
                    height: 100,
                    width: 175,
                    child: Text("1)\n2)\n3)\n4)\n5)"),
                    color: Colors.black26,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),

            ],
          ),
        ),
      )
      );


  }
}
