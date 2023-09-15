import 'package:flutter/material.dart';
import 'package:quran2/pray/model/prayer_model.dart';
import 'package:http/http.dart'as http;
class PrayerProvider extends ChangeNotifier {
PrayerModel prayerModel=PrayerModel(code: 0, status: '', data: []);
Future pray()async{
  String url = 'http://api.aladhan.com/v1/calendarByCity?city=cairo&country=egypt';
  http.Response response = await http.get(Uri.parse(url));
  var body = response.body;
  print(body);
  if(response.statusCode==200)
  {
    return prayerModelFromJson(response.body);
  }else{
    print('error');
  }
  notifyListeners();
}
}
