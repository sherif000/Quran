import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran2/quran/controller/quran/provider.dart';
import 'package:quran2/quran/viewer/ui/quran_card.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
final bucketGlobel=PageStorageBucket();

class QuranScreen extends StatefulWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  _QuranScreenState createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  late Future _future;

  Future<void> prepareData() async {
    var home_provider = Provider.of<QuranProvider>(context, listen: false);
    await home_provider.quran();
  }

ScrollController sc=ScrollController();
  double number=0;
  sp()async{
    SharedPreferences pre= await SharedPreferences.getInstance();
    sc=new ScrollController();
    number=sc.offset;
   pre.setString('num', number as String);

  }
  void initState() {
    _future = prepareData();
    getShared()async{
      SharedPreferences pre= await SharedPreferences.getInstance();
      pre.getString('num');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: PageStorage(
            bucket: bucketGlobel,
            child: (provider.homeList.data.surahs.isEmpty) ?
            Center(child: CircularProgressIndicator(),):
            ListView.builder(
              controller: sc,
              key: const PageStorageKey<String>('page'),
                itemCount: provider.homeList.data.surahs.length,
                itemBuilder: (BuildContext context, int index) {
                  return QuranCard(quran: provider.homeList.data.surahs[index],

                  );
                }),
          ),
        );
      },
    );
  }


}
