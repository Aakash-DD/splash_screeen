import 'package:flutter/material.dart';

void main()=>runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.yellowAccent,
  ),
  home: new SplashScreen() ,
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new  Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: new Icon(Icons.shopping_cart,
                        color:Colors.redAccent,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text("FlutKart",
                      style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("Onine Shop h bc,samaj le",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}










