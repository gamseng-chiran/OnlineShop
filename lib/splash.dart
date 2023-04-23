import 'dart:async';
// import 'dart:js';

import 'package:assignment/onboard/onboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => OnBoard(),
        ));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Center(child: Text('UBazar', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),))
      ),
    );
  }
}