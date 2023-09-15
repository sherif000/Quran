
import 'package:http/http.dart'as http;

import '../model/quran_model.dart';
class RemoteService{
  static Future quran1() async {

    String url = 'http://api.alquran.cloud/v1/quran/quran-uthmani';
    http.Response response = await http.get(Uri.parse(url));
    var body = response.body;
    print(body);
    if(response.statusCode==200)
    {
      return quranFromJson(body);
    }else{
      print('error');
    }


  }

}