import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quran2/quran/model/quran_model.dart';

class QuranCard extends StatefulWidget {
  final Surah quran;

  QuranCard({required this.quran});

  @override
  State<QuranCard> createState() => _QuranCardState();
}

class _QuranCardState extends State<QuranCard> {
  String ayahs = "";
  String juz='';

  late final Surah quran;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < widget.quran.ayahs.length; i++,) {
      ayahs += "${widget.quran.ayahs[i].text} (${widget.quran.ayahs[i].numberInSurah.toString()}) "  ;
      juz='${widget.quran.ayahs[i].juz}';
    }
    // Fluttertoast.showToast(
    //     msg: "${widget.quran.ayahs}",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.BOTTOM,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       AutoSizeText(
        //         '${widget.quran.name}',
        //         style: TextStyle(fontSize: 30),
        //       ),
        //       AutoSizeText(
        //         '${juz}',
        //         style: TextStyle(fontSize: 30),
        //       ),
        //
        //     ],
        //   ),
        // ),
        AutoSizeText(
          '${widget.quran.name}',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: (15/ 375.0) * MediaQuery.of(context).size.height,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: AutoSizeText(
            '$ayahs',
            style: TextStyle(fontSize: 30,fontFamily: 'AmiriQuran'),textAlign: TextAlign.center,
          ),
        ),
        Divider(
          color: Colors.black,
          thickness: 2,
        ),
        SizedBox(
          height: (5/ 375.0) * MediaQuery.of(context).size.height,
        ),

      ],
    );
  }
}
