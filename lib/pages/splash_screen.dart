import 'dart:async';

import 'package:aplikasi_pedulilansia/pages/home_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Background.png',
                    width: 450,
                    height: 450,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 272,
                left: 101,
                right: 102,
              ),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 172,
                        height: 190,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
