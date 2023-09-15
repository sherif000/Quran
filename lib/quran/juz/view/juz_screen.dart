import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran2/quran/juz/controller/juz_provider/juz_provider_provider.dart';
class JuzScreen extends StatefulWidget {
  const JuzScreen({Key? key}) : super(key: key);

  @override
  State<JuzScreen> createState() => _JuzScreenState();
}

class _JuzScreenState extends State<JuzScreen> {
  Future<void> prepareData() async {
    var juz_provider = Provider.of<Juz_providerProvider>(context, listen: false);
    await juz_provider.juz(0);
  }

  void initState() {
     prepareData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Juz_providerProvider>(
  builder: (context, provider, child) {
  return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: AutoSizeText('sss',style: TextStyle(fontSize: 20,color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
body: (provider.juzModel.data.ayahs.isEmpty) ? Center(
  child: CircularProgressIndicator(),):ListView(
  children: List.generate(29, (index){
    return Row(
      children: [
        AutoSizeText('${index+1}',style: TextStyle(
            fontSize: 20,color: Colors.black
        ),),
        AutoSizeText('الجزء',style: TextStyle(
            fontSize: 20,color: Colors.black
        ),),

      ],

    );
  }),
),

    );
  },
);
  }
}
