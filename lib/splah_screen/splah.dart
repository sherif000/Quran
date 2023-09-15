import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quran2/home/home_screen.dart';
class Splah extends StatefulWidget {
  const Splah({Key? key}) : super(key: key);

  @override
  _SplahState createState() => _SplahState();
}

class _SplahState extends State<Splah> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blueGrey,
body: AnimatedSplashScreen(
  splash: Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image:AssetImage('images/WhatsApp Image 2023-03-30 at 1.37.18 PM.jpeg'),
      ),
    ),
  ),
  nextScreen:HomeScreen(
  ) ,

),

    ));
  }
}
