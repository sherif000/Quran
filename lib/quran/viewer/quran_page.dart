import 'package:flutter/material.dart';
import 'package:quran2/quran/viewer/ayahs.dart';
import 'package:quran2/quran/viewer/quran_screen.dart';
class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  _QuranPageState createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('القران الكريم',style: TextStyle(
            fontSize: 20,color: Colors.black
          ),),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Text('الايات',style: TextStyle(fontSize: 20,color: Colors.black),),
              Text('القران',style: TextStyle(fontSize: 20,color: Colors.black),),
            ],
          ),
        ),
        body:  TabBarView(
            children: [
              Ayahs(),

              QuranScreen(),
            ],
          ),


      ),
    );
  }
}
