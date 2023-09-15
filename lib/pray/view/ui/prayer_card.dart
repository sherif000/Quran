import 'package:flutter/material.dart';
import 'package:quran2/pray/model/prayer_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
class PrayerCard extends StatelessWidget {
  final Datum pray;

   PrayerCard({super.key, required this.pray});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
AutoSizeText('Fajr:${pray.timings.fajr}',
style: TextStyle(
  color: Colors.black,fontSize: 20,
    fontFamily: 'AmiriQuran'
),),
          SizedBox(
            height: (10 / 375.0) * MediaQuery.of(context).size.height,
          ),
          AutoSizeText('dhuhr:${pray.timings.dhuhr}',
            style: TextStyle(
                color: Colors.black,fontSize: 20,
                fontFamily: 'AmiriQuran'
            ),),
          SizedBox(
            height: (10 / 375.0) * MediaQuery.of(context).size.height,
          ),AutoSizeText('Asr:${pray.timings.asr}',
            style: TextStyle(
                color: Colors.black,fontSize: 20,
                fontFamily: 'AmiriQuran'
            ),),
          SizedBox(
            height: (10 / 375.0) * MediaQuery.of(context).size.height,
          ),AutoSizeText('Maghrib:${pray.timings.maghrib}',
            style: TextStyle(
                color: Colors.black,fontSize: 20,
                fontFamily: 'AmiriQuran'
            ),),
          SizedBox(
            height: (10 / 375.0) * MediaQuery.of(context).size.height,
          ),
          AutoSizeText('Isha:${pray.timings.isha}',
            style: TextStyle(
                color: Colors.black,fontSize: 20,
                fontFamily: 'AmiriQuran'
            ),),

        ],

      ),
    );
  }
}
