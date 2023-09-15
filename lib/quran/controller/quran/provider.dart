import 'package:flutter/material.dart';

import '../../model/quran_model.dart';
import '../../service/quran_api.dart';

class QuranProvider extends ChangeNotifier {
  Quran homeList=Quran(code: 0,data: Data(
      surahs: [Surah(number: '', name: '', englishName:'', englishNameTranslation:'', revelationType: RevelationType.MECCAN,
          ayahs: [Ayah(
              number: '', text: '', numberInSurah: '', juz: '', manzil:'', page: '', ruku: '', hizbQuarter: '', sajda: '')])]
      ,edition: Edition(englishName: '',format: '',identifier: '',language: '',name: '',type: ''
  )),status: '');
  Future quran () async{


      homeList=await RemoteService.quran1();



    notifyListeners();
  }
}
