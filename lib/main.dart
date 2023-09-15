import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran2/pray/controlle/prayer/provider.dart';
import 'package:quran2/quran/controller/quran/provider.dart';
import 'package:quran2/quran/juz/controller/juz_provider/juz_provider_provider.dart';
import 'package:quran2/quran/juz/view/juz_screen.dart';
import 'package:quran2/splah_screen/splah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>QuranProvider()),
        ChangeNotifierProvider(create: (_)=>PrayerProvider()),
        ChangeNotifierProvider(create: (_)=>Juz_providerProvider()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
home: Splah(),
      ),
    );
  }
}
