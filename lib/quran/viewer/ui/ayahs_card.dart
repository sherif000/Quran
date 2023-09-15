import 'package:flutter/material.dart';
import 'package:quran2/quran/viewer/ayah_screen.dart';

import '../../model/quran_model.dart';
class AyahsCard extends StatelessWidget {
  late final Surah home2;
  AyahsCard({required this.home2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  AyahScreen(home2:home2.ayahs)),
        );
      },

      child: Card(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${home2.name}',style: TextStyle(
                  fontSize: 30
                ),),
                if(home2.revelationType.toString()=="RevelationType.MEDINAN")
                  Text('مدينة',style: TextStyle(
                    fontSize: 25
                  ),),

                if(home2.revelationType.toString()=="RevelationType.MECCAN")
                Text('مكة',style: TextStyle(
                  fontSize: 25
                ),),

              ],
            ),
          ),
      ),
    );
  }
}
