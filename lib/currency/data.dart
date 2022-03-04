import 'dart:convert';

class Data {
  final int curId;
  final int curParenId;
  final String curCode;
  final String curAbbreviation;
  final String curName;
  final String curNameBel;
  final String curNameEng;
  final String curQuotName;
  final String curQuotNameBel;
  final String curQuotNameEng;
  final String curNameMulti;
  final String curNameBelMulti;
  final String curNameEngMulti;
  final int curScale;
  final int curPEriodicity;
  final String curDateStart;
  final String curDateEnd;
  Data({
    required this.curId,
    required this.curParenId,
    required this.curCode,
    required this.curAbbreviation,
    required this.curName,
    required this.curNameBel,
    required this.curNameEng,
    required this.curQuotName,
    required this.curQuotNameBel,
    required this.curQuotNameEng,
    required this.curNameMulti,
    required this.curNameBelMulti,
    required this.curNameEngMulti,
    required this.curScale,
    required this.curPEriodicity,
    required this.curDateStart,
    required this.curDateEnd,
  });

  Data copyWith({
    int? Cur_ID,
    int? Cur_ParentID,
    String? Cur_Code,
    String? Cur_Abbreviation,
    String? Cur_Name,
    String? Cur_Name_Bel,
    String? Cur_Name_Eng,
    String? Cur_QuotName,
    String? Cur_QuotName_Bel,
    String? Cur_QuotName_Eng,
    String? Cur_NameMulti,
    String? Cur_Name_BelMulti,
    String? Cur_Name_EngMulti,
    int? Cur_Scale,
    int? Cur_Periodicity,
    String? Cur_DateStart,
    String? Cur_DateEnd,
  }) {
    return Data(
      curId: Cur_ID ?? this.curId,
      curParenId: Cur_ParentID ?? this.curParenId,
      curCode: Cur_Code ?? this.curCode,
      curAbbreviation: Cur_Abbreviation ?? this.curAbbreviation,
      curName: Cur_Name ?? this.curName,
      curNameBel: Cur_Name_Bel ?? this.curNameBel,
      curNameEng: Cur_Name_Eng ?? this.curNameEng,
      curQuotName: Cur_QuotName ?? this.curQuotName,
      curQuotNameBel: Cur_QuotName_Bel ?? this.curQuotNameBel,
      curQuotNameEng: Cur_QuotName_Eng ?? this.curQuotNameEng,
      curNameMulti: Cur_NameMulti ?? this.curNameMulti,
      curNameBelMulti: Cur_Name_BelMulti ?? this.curNameBelMulti,
      curNameEngMulti: Cur_Name_EngMulti ?? this.curNameEngMulti,
      curScale: Cur_Scale ?? this.curScale,
      curPEriodicity: Cur_Periodicity ?? this.curPEriodicity,
      curDateStart: Cur_DateStart ?? this.curDateStart,
      curDateEnd: Cur_DateEnd ?? this.curDateEnd,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Cur_ID': curId,
      'Cur_ParentID': curParenId,
      'Cur_Code': curCode,
      'Cur_Abbreviation': curAbbreviation,
      'Cur_Name': curName,
      'Cur_Name_Bel': curNameBel,
      'Cur_Name_Eng': curNameEng,
      'Cur_QuotName': curQuotName,
      'Cur_QuotName_Bel': curQuotNameBel,
      'Cur_QuotName_Eng': curQuotNameEng,
      'Cur_NameMulti': curNameMulti,
      'Cur_Name_BelMulti': curNameBelMulti,
      'Cur_Name_EngMulti': curNameEngMulti,
      'Cur_Scale': curScale,
      'Cur_Periodicity': curPEriodicity,
      'Cur_DateStart': curDateStart,
      'Cur_DateEnd': curDateEnd,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      curId: map['Cur_ID']?.toInt() ?? 0,
      curParenId: map['Cur_ParentID']?.toInt() ?? 0,
      curCode: map['Cur_Code'] ?? '',
      curAbbreviation: map['Cur_Abbreviation'] ?? '',
      curName: map['Cur_Name'] ?? '',
      curNameBel: map['Cur_Name_Bel'] ?? '',
      curNameEng: map['Cur_Name_Eng'] ?? '',
      curQuotName: map['Cur_QuotName'] ?? '',
      curQuotNameBel: map['Cur_QuotName_Bel'] ?? '',
      curQuotNameEng: map['Cur_QuotName_Eng'] ?? '',
      curNameMulti: map['Cur_NameMulti'] ?? '',
      curNameBelMulti: map['Cur_Name_BelMulti'] ?? '',
      curNameEngMulti: map['Cur_Name_EngMulti'] ?? '',
      curScale: map['Cur_Scale']?.toInt() ?? 0,
      curPEriodicity: map['Cur_Periodicity']?.toInt() ?? 0,
      curDateStart: map['Cur_DateStart'] ?? '',
      curDateEnd: map['Cur_DateEnd'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(Cur_ID: $curId, Cur_ParentID: $curParenId, Cur_Code: $curCode, Cur_Abbreviation: $curAbbreviation, Cur_Name: $curName, Cur_Name_Bel: $curNameBel, Cur_Name_Eng: $curNameEng, Cur_QuotName: $curQuotName, Cur_QuotName_Bel: $curQuotNameBel, Cur_QuotName_Eng: $curQuotNameEng, Cur_NameMulti: $curNameMulti, Cur_Name_BelMulti: $curNameBelMulti, Cur_Name_EngMulti: $curNameEngMulti, Cur_Scale: $curScale, Cur_Periodicity: $curPEriodicity, Cur_DateStart: $curDateStart, Cur_DateEnd: $curDateEnd)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data &&
        other.curId == curId &&
        other.curParenId == curParenId &&
        other.curCode == curCode &&
        other.curAbbreviation == curAbbreviation &&
        other.curName == curName &&
        other.curNameBel == curNameBel &&
        other.curNameEng == curNameEng &&
        other.curQuotName == curQuotName &&
        other.curQuotNameBel == curQuotNameBel &&
        other.curQuotNameEng == curQuotNameEng &&
        other.curNameMulti == curNameMulti &&
        other.curNameBelMulti == curNameBelMulti &&
        other.curNameEngMulti == curNameEngMulti &&
        other.curScale == curScale &&
        other.curPEriodicity == curPEriodicity &&
        other.curDateStart == curDateStart &&
        other.curDateEnd == curDateEnd;
  }

  @override
  int get hashCode {
    return curId.hashCode ^
        curParenId.hashCode ^
        curCode.hashCode ^
        curAbbreviation.hashCode ^
        curName.hashCode ^
        curNameBel.hashCode ^
        curNameEng.hashCode ^
        curQuotName.hashCode ^
        curQuotNameBel.hashCode ^
        curQuotNameEng.hashCode ^
        curNameMulti.hashCode ^
        curNameBelMulti.hashCode ^
        curNameEngMulti.hashCode ^
        curScale.hashCode ^
        curPEriodicity.hashCode ^
        curDateStart.hashCode ^
        curDateEnd.hashCode;
  }
}
