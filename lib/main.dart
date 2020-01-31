import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image(
                      width: double.infinity,
                      height: double.infinity,
                      image: AssetImage("images/bg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Best Music\nStreaming\nPlatform",style: TextStyle(color: Colors.white,fontSize: 70),textAlign: TextAlign.start,),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              child: Text("F",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              decoration: new BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              child: Text("G+",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                      _editText("Name"),
                      _editText("Email Address"),
                      _editText("Password"),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: 170,
                          height: 45,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                                side: BorderSide(
                                  color: Color(0xff613AEE),
                                )),
                            onPressed: () {},
                            color: Color(0xff613AEE),
                            textColor: Colors.white,
                            child: Text("Sign Up".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _editText(title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
              contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            ),
          ),
        ),
      ],
    );
  }
}
