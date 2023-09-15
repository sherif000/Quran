// To parse this JSON data, do
//
//     final quran = quranFromJson(jsonString);

import 'dart:convert';

Quran quranFromJson(String str) => Quran.fromJson(json.decode(str));

String quranToJson(Quran data) => json.encode(data.toJson());

class Quran {
  Quran({
   required this.code,
   required this.status,
   required this.data,
  });

  int code;
  String status;
  Data data;

  factory Quran.fromJson(Map<String, dynamic> json) => Quran(
    code: json["code"],
    status: json["status"].toString(),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  Data({
  required  this.surahs,
  required  this.edition,
  });

  List<Surah> surahs;
  Edition edition;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    surahs: List<Surah>.from(json["surahs"].map((x) => Surah.fromJson(x))),
    edition: Edition.fromJson(json["edition"]),
  );

  Map<String, dynamic> toJson() => {
    "surahs": List<dynamic>.from(surahs.map((x) => x.toJson())),
    "edition": edition.toJson(),
  };
}

class Edition {
  Edition({
  required  this.identifier,
   required this.language,
   required this.name,
   required this.englishName,
   required this.format,
   required this.type,
  });

  String identifier;
  String language;
  String name;
  String englishName;
  String format;
  String type;

  factory Edition.fromJson(Map<String, dynamic> json) => Edition(
    identifier: json["identifier"].toString(),
    language: json["language"].toString(),
    name: json["name"].toString(),
    englishName: json["englishName"].toString(),
    format: json["format"].toString(),
    type: json["type"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifier,
    "language": language,
    "name": name,
    "englishName": englishName,
    "format": format,
    "type": type,
  };
}

class Surah {
  Surah({
  required  this.number,
   required this.name,
   required this.englishName,
   required this.englishNameTranslation,
   required this.revelationType,
   required this.ayahs,
  });

  String number;
  String name;
  String englishName;
  String englishNameTranslation;
  RevelationType? revelationType;
  List<Ayah> ayahs;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
    number: json["number"].toString(),
    name: json["name"].toString(),
    englishName: json["englishName"].toString(),
    englishNameTranslation: json["englishNameTranslation"].toString(),
    revelationType: revelationTypeValues!.map![json["revelationType"]],
    ayahs: List<Ayah>.from(json["ayahs"].map((x) => Ayah.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "name": name,
    "englishName": englishName,
    "englishNameTranslation": englishNameTranslation,
    "revelationType": revelationTypeValues.reverse![revelationType],
    "ayahs": List<dynamic>.from(ayahs.map((x) => x.toJson())),
  };
}

class Ayah {
  Ayah({
   required this.number,
   required this.text,
   required this.numberInSurah,
   required this.juz,
   required this.manzil,
   required this.page,
   required this.ruku,
   required this.hizbQuarter,
   required this.sajda,
  });

  String number;
  String text;
  String numberInSurah;
  String juz;
  String manzil;
  String page;
  String ruku;
  String hizbQuarter;
  dynamic sajda;

  factory Ayah.fromJson(Map<String, dynamic> json) => Ayah(
    number: json["number"].toString(),
    text: json["text"].toString(),
    numberInSurah: json["numberInSurah"].toString(),
    juz: json["juz"].toString(),
    manzil: json["manzil"].toString(),
    page: json["page"].toString(),
    ruku: json["ruku"].toString(),
    hizbQuarter: json["hizbQuarter"].toString(),
    sajda: json["sajda"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "text": text,
    "numberInSurah": numberInSurah,
    "juz": juz,
    "manzil": manzil,
    "page": page,
    "ruku": ruku,
    "hizbQuarter": hizbQuarter,
    "sajda": sajda,
  };
}

class SajdaClass {
  SajdaClass({
  required  this.id,
   required this.recommended,
   required this.obligatory,
  });

  int id;
  bool recommended;
  bool obligatory;

  factory SajdaClass.fromJson(Map<String, dynamic> json) => SajdaClass(
    id: json["id"],
    recommended: json["recommended"],
    obligatory: json["obligatory"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "recommended": recommended,
    "obligatory": obligatory,
  };
}

enum RevelationType { MECCAN, MEDINAN }

final revelationTypeValues = EnumValues({
  "Meccan": RevelationType.MECCAN,
  "Medinan": RevelationType.MEDINAN
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String> ?reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map?.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
