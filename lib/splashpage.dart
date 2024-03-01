import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/login.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _splashDuration = 3000;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: _splashDuration), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/catwalk.gif',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  '--- Hotel Pro ---',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MyFont',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
