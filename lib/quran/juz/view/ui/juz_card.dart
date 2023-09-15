import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran2/quran/juz/model/juzModel.dart';

import '../../../model/quran_model.dart';
class JuzCard extends StatelessWidget {
late final JuzModel juz;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          AutoSizeText('${juz.data.number}',style: TextStyle(
            fontSize: 20,color: Colors.black
          ),),
          AutoSizeText('الجزء',style: TextStyle(
              fontSize: 20,color: Colors.black
          ),),

        ],
      ),
    );
  }
}
