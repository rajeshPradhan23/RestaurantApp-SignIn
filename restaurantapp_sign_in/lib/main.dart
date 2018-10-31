import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/Login_background.png"),
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.lighten,
            //color: Colors.white54,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text("People's \nChoice",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Righteous',
                        color: Colors.black87)),
              ),
              SizedBox(height: 50.0),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.black54),
                    hintText: 'Username or Email',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.black54),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  splashColor: Colors.blue[200],
                  color: Colors.blueAccent,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
              SizedBox(height: 20.0),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  splashColor: Colors.white,
                  color: Colors.red,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                      new Image(
                        image: new AssetImage("assets/icon_googleplus.png"),
                        //fit: BoxFit.cover,
                        //colorBlendMode: BlendMode.lighten,
                        //color: Colors.white54,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
