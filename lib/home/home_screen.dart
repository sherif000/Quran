import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran2/pray/view/prayer_screen.dart';
import 'package:quran2/qubla/qibla/qibla.dart';
import 'package:quran2/quran/viewer/ayahs.dart';
import 'package:quran2/quran/viewer/quran_page.dart';
import 'package:quran2/quran/viewer/quran_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
body: Stack(
  children: [
    Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('images/WhatsApp Image 2023-03-30 at 1.37.17 PM.jpeg'),
        ),
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TextButton(
          //     style: TextButton.styleFrom(backgroundColor: Colors.white),
          //     onPressed: (){
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => const PrayerScreen()),
          //       );
          //     },
          //     child: AutoSizeText(
          //       'مواقيت الصلاة',style: TextStyle(fontSize: 20,color: Colors.black),
          //     )),
          // SizedBox(
          //   height: (10/375.0)*MediaQuery.of(context).size.height,
          // ),
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: (){
                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const QuranPage()),
                            );
              },
              child: AutoSizeText(
                'القران الكريم',style: TextStyle(fontSize: 20,color: Colors.black),
              )),
          SizedBox(
            height: (10/375.0)*MediaQuery.of(context).size.height,
          ),
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Qibla()),
                );
              },
              child: AutoSizeText(
                'قبلة الصلاة',style: TextStyle(fontSize: 20,color: Colors.black),
              )),

        ],
      ),
    ),
  ],
),

    ));
  }
}
