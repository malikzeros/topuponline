import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:io';
import 'package:flutter/services.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future isconnected() async {
    try {
  final result = await InternetAddress.lookup('www.kuotahero.com');
  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
    Timer(Duration(seconds: 5), () => Navigator.of(context).pushReplacementNamed('/home'));
  }
} on SocketException catch (_) {
  return AlertDialog(
          title: new Text("Keluar Aplikasi"),
          content: new Text("Gagal Koneksi ke Server"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Tidak"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Yes"),
              onPressed: () {
                exit(0);
              },
            ),
          ],
        );
}
  }
  @override
  void initState() {
    this.isconnected();
  }

  @override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.png'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )
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
