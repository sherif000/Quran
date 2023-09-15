// To parse this JSON data, do
//
//     final juzModel = juzModelFromJson(jsonString);

import 'dart:convert';

JuzModel juzModelFromJson(String str) => JuzModel.fromJson(json.decode(str));

String juzModelToJson(JuzModel data) => json.encode(data.toJson());

class JuzModel {
  int code;
  String status;
  Data data;

  JuzModel({
    required this.code,
    required this.status,
    required this.data,
  });

  factory JuzModel.fromJson(Map<String, dynamic> json) => JuzModel(
    code: json["code"],
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  int number;
  List<Ayah> ayahs;
  Surahs surahs;
  Edition edition;

  Data({
    required this.number,
    required this.ayahs,
    required this.surahs,
    required this.edition,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    number: json["number"],
    ayahs: List<Ayah>.from(json["ayahs"].map((x) => Ayah.fromJson(x))),
    surahs: Surahs.fromJson(json["surahs"]),
    edition: Edition.fromJson(json["edition"]),
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "ayahs": List<dynamic>.from(ayahs.map((x) => x.toJson())),
    "surahs": surahs.toJson(),
    "edition": edition.toJson(),
  };
}

class Ayah {
  int number;
  String text;
  The100 surah;
  int numberInSurah;
  int juz;
  int manzil;
  int page;
  int ruku;
  int hizbQuarter;
  dynamic sajda;

  Ayah({
    required this.number,
    required this.text,
    required this.surah,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) => Ayah(
    number: json["number"],
    text: json["text"],
    surah: The100.fromJson(json["surah"]),
    numberInSurah: json["numberInSurah"],
    juz: json["juz"],
    manzil: json["manzil"],
    page: json["page"],
    ruku: json["ruku"],
    hizbQuarter: json["hizbQuarter"],
    sajda: json["sajda"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "text": text,
    "surah": surah.toJson(),
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
  int id;
  bool recommended;
  bool obligatory;

  SajdaClass({
    required this.id,
    required this.recommended,
    required this.obligatory,
  });

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

class The100 {
  int number;
  String name;
  String englishName;
  String englishNameTranslation;
  String revelationType;
  int numberOfAyahs;

  The100({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.numberOfAyahs,
  });

  factory The100.fromJson(Map<String, dynamic> json) => The100(
    number: json["number"],
    name: json["name"],
    englishName: json["englishName"],
    englishNameTranslation: json["englishNameTranslation"],
    revelationType: json["revelationType"],
    numberOfAyahs: json["numberOfAyahs"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "name": name,
    "englishName": englishName,
    "englishNameTranslation": englishNameTranslation,
    "revelationType": revelationType,
    "numberOfAyahs": numberOfAyahs,
  };
}

class Edition {
  String identifier;
  String language;
  String name;
  String englishName;
  String format;
  String type;
  String direction;

  Edition({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
    required this.direction,
  });

  factory Edition.fromJson(Map<String, dynamic> json) => Edition(
    identifier: json["identifier"],
    language: json["language"],
    name: json["name"],
    englishName: json["englishName"],
    format: json["format"],
    type: json["type"],
    direction: json["direction"],
  );

  Map<String, dynamic> toJson() => {
    "identifier": identifier,
    "language": language,
    "name": name,
    "englishName": englishName,
    "format": format,
    "type": type,
    "direction": direction,
  };
}

class Surahs {
  The100 the78;
  The100 the79;
  The100 the80;
  The100 the81;
  The100 the82;
  The100 the83;
  The100 the84;
  The100 the85;
  The100 the86;
  The100 the87;
  The100 the88;
  The100 the89;
  The100 the90;
  The100 the91;
  The100 the92;
  The100 the93;
  The100 the94;
  The100 the95;
  The100 the96;
  The100 the97;
  The100 the98;
  The100 the99;
  The100 the100;
  The100 the101;
  The100 the102;
  The100 the103;
  The100 the104;
  The100 the105;
  The100 the106;
  The100 the107;
  The100 the108;
  The100 the109;
  The100 the110;
  The100 the111;
  The100 the112;
  The100 the113;
  The100 the114;

  Surahs({
    required this.the78,
    required this.the79,
    required this.the80,
    required this.the81,
    required this.the82,
    required this.the83,
    required this.the84,
    required this.the85,
    required this.the86,
    required this.the87,
    required this.the88,
    required this.the89,
    required this.the90,
    required this.the91,
    required this.the92,
    required this.the93,
    required this.the94,
    required this.the95,
    required this.the96,
    required this.the97,
    required this.the98,
    required this.the99,
    required this.the100,
    required this.the101,
    required this.the102,
    required this.the103,
    required this.the104,
    required this.the105,
    required this.the106,
    required this.the107,
    required this.the108,
    required this.the109,
    required this.the110,
    required this.the111,
    required this.the112,
    required this.the113,
    required this.the114,
  });

  factory Surahs.fromJson(Map<String, dynamic> json) => Surahs(
    the78: The100.fromJson(json["78"]),
    the79: The100.fromJson(json["79"]),
    the80: The100.fromJson(json["80"]),
    the81: The100.fromJson(json["81"]),
    the82: The100.fromJson(json["82"]),
    the83: The100.fromJson(json["83"]),
    the84: The100.fromJson(json["84"]),
    the85: The100.fromJson(json["85"]),
    the86: The100.fromJson(json["86"]),
    the87: The100.fromJson(json["87"]),
    the88: The100.fromJson(json["88"]),
    the89: The100.fromJson(json["89"]),
    the90: The100.fromJson(json["90"]),
    the91: The100.fromJson(json["91"]),
    the92: The100.fromJson(json["92"]),
    the93: The100.fromJson(json["93"]),
    the94: The100.fromJson(json["94"]),
    the95: The100.fromJson(json["95"]),
    the96: The100.fromJson(json["96"]),
    the97: The100.fromJson(json["97"]),
    the98: The100.fromJson(json["98"]),
    the99: The100.fromJson(json["99"]),
    the100: The100.fromJson(json["100"]),
    the101: The100.fromJson(json["101"]),
    the102: The100.fromJson(json["102"]),
    the103: The100.fromJson(json["103"]),
    the104: The100.fromJson(json["104"]),
    the105: The100.fromJson(json["105"]),
    the106: The100.fromJson(json["106"]),
    the107: The100.fromJson(json["107"]),
    the108: The100.fromJson(json["108"]),
    the109: The100.fromJson(json["109"]),
    the110: The100.fromJson(json["110"]),
    the111: The100.fromJson(json["111"]),
    the112: The100.fromJson(json["112"]),
    the113: The100.fromJson(json["113"]),
    the114: The100.fromJson(json["114"]),
  );

  Map<String, dynamic> toJson() => {
    "78": the78.toJson(),
    "79": the79.toJson(),
    "80": the80.toJson(),
    "81": the81.toJson(),
    "82": the82.toJson(),
    "83": the83.toJson(),
    "84": the84.toJson(),
    "85": the85.toJson(),
    "86": the86.toJson(),
    "87": the87.toJson(),
    "88": the88.toJson(),
    "89": the89.toJson(),
    "90": the90.toJson(),
    "91": the91.toJson(),
    "92": the92.toJson(),
    "93": the93.toJson(),
    "94": the94.toJson(),
    "95": the95.toJson(),
    "96": the96.toJson(),
    "97": the97.toJson(),
    "98": the98.toJson(),
    "99": the99.toJson(),
    "100": the100.toJson(),
    "101": the101.toJson(),
    "102": the102.toJson(),
    "103": the103.toJson(),
    "104": the104.toJson(),
    "105": the105.toJson(),
    "106": the106.toJson(),
    "107": the107.toJson(),
    "108": the108.toJson(),
    "109": the109.toJson(),
    "110": the110.toJson(),
    "111": the111.toJson(),
    "112": the112.toJson(),
    "113": the113.toJson(),
    "114": the114.toJson(),
  };
}
