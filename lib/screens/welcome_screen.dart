import 'dart:async';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login'); // login sayfaya gider
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 38, 38),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Dukkan",
            style: TextStyle(
                fontSize: 34.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontFamily: 'Amatic SC'),
          ),
        ],
      )),
    );
  }
}
