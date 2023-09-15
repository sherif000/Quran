import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:quran2/quran/juz/model/juzModel.dart';
class Juz_providerProvider extends ChangeNotifier {
JuzModel juzModel=JuzModel(code: 0, status:'', data:
Data(number: 0, ayahs:[], surahs:
Surahs(the78:The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the79: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the80: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the81: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the82: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the83: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the84: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the85: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the86: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the87: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the88: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the89: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the90: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the91: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the92: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the93: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
the94: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the95: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the96: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the97: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the98: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the99: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the100: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the101: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the102: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the103: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the104: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the105: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the106: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the107: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the108: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the109: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the110: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the111: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the112: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the113: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
  the114: The100(englishName: '',name: '',englishNameTranslation: '',number: 0,numberOfAyahs: 0,revelationType: ''),
),
    edition:Edition(name: '',type: '',direction: '',englishName: '',format: '',identifier: '',language: '')) );
Future juz(int number)async{
  String url = 'http://api.alquran.cloud/v1/juz/$number/quran-uthmani';
  http.Response response = await http.get(Uri.parse(url));
  var body = response.body;
  print(body);
  if(response.statusCode==200)
  {
    return juzModelFromJson(response.body);
  }else{
    print('error');
  }
  notifyListeners();
}
}
