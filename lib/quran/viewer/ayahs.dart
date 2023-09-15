import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran2/quran/viewer/ui/ayahs_card.dart';

import '../controller/quran/provider.dart';

class Ayahs extends StatefulWidget {
  const Ayahs({Key? key}) : super(key: key);

  @override
  _AyahsState createState() => _AyahsState();
}

class _AyahsState extends State<Ayahs> {
  late Future _future;

  Future<void> prepareData() async {
    var home_provider = Provider.of<QuranProvider>(context, listen: false);
    await home_provider.quran();
  }

  void initState() {
    _future = prepareData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text('ايات', style: TextStyle(
                  fontSize: 20, color: Colors.black
              ),),
              centerTitle: true,
            ),
            body: (provider.homeList.data.surahs.isEmpty) ? Center(
              child: CircularProgressIndicator(),) :
            ListView.builder(
                itemCount: provider.homeList.data.surahs.length,
                itemBuilder: (BuildContext context, int index) {
                  return AyahsCard(home2: provider.homeList.data.surahs[index]);
                }),

        );
      },
    );
  }
}
