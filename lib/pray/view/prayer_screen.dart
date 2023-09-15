import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran2/pray/controlle/prayer/provider.dart';
import 'package:quran2/pray/view/ui/prayer_card.dart';
class PrayerScreen extends StatefulWidget {
  const PrayerScreen({Key? key}) : super(key: key);

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  Future<void> getPray() async {
    var studentProvider = Provider.of<PrayerProvider>(context, listen: false);
    await studentProvider.pray();
  }

  @override
  void initState() {
    getPray();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight;
    final width = MediaQuery.of(context).size.width;
    return Consumer<PrayerProvider>(
  builder: (context, provider, child) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AutoSizeText(
          'Prayer Timing',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: (provider.prayerModel.data.isEmpty)
          ?  Center(
          child: CircularProgressIndicator(),
          ) :
           GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: width * .01,
          mainAxisExtent: height * .35,
        ),
        padding: EdgeInsets.all(width / 30),
        cacheExtent: 9999,
        itemCount: provider.prayerModel.data.length,
        // physics: const BouncingScrollPhysics(
        //     parent: AlwaysScrollableScrollPhysics()),
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              AutoSizeText('Fajr:${provider.prayerModel.data[index].timings.fajr}',
                style: TextStyle(
                    color: Colors.black,fontSize: 20,
                    fontFamily: 'AmiriQuran'
                ),),
              SizedBox(
                height: (10 / 375.0) * MediaQuery.of(context).size.height,
              ),
              AutoSizeText('Dhuhr:${provider.prayerModel.data[index].timings.dhuhr}',
                style: TextStyle(
                    color: Colors.black,fontSize: 20,
                    fontFamily: 'AmiriQuran'
                ),),
              SizedBox(
                height: (10 / 375.0) * MediaQuery.of(context).size.height,
              ),AutoSizeText('Asr:${provider.prayerModel.data[index].timings.asr}',
                style: TextStyle(
                    color: Colors.black,fontSize: 20,
                    fontFamily: 'AmiriQuran'
                ),),
              SizedBox(
                height: (10 / 375.0) * MediaQuery.of(context).size.height,
              ),AutoSizeText('Maghrib:${provider.prayerModel.data[index].timings.maghrib}',
                style: TextStyle(
                    color: Colors.black,fontSize: 20,
                    fontFamily: 'AmiriQuran'
                ),),
              SizedBox(
                height: (10 / 375.0) * MediaQuery.of(context).size.height,
              ),
              AutoSizeText('Isha:${provider.prayerModel.data[index].timings.isha}',
                style: TextStyle(
                    color: Colors.black,fontSize: 20,
                    fontFamily: 'AmiriQuran'
                ),),

            ],

          );
        },
      ),
    );
  },
);
  }
}
