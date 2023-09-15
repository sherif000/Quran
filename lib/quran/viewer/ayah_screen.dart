import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../model/quran_model.dart';
class AyahScreen extends StatefulWidget {
  late final List <Ayah> home2;
AyahScreen({required this.home2});

  @override
  _AyahScreenState createState() => _AyahScreenState();
}

class _AyahScreenState extends State<AyahScreen> {
  String ayahs='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < widget.home2.length; i++) {
      ayahs += "${widget.home2[i].text}  (${widget.home2[i].numberInSurah.toString()}) ";
    }
  }

  @override


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
      body: ListView(
        children: [
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
      ),
      ),
    );
  }
}
