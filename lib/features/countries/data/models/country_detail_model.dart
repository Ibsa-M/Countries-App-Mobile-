// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'country_detail_model.freezed.dart';
// part 'country_detail_model.g.dart';

// @freezed
// class CountryDetailModel with _$CountryDetailModel {
//   const factory CountryDetailModel({
//     required Map<String, dynamic> name,
//     required Map<String, dynamic> flags,
//     required int population,
//     required List<String> capital,
//     required String region,
//     required String subregion,
//     required double area,
//     required List<String> timezones,
//   }) = _CountryDetailModel;

//   factory CountryDetailModel.fromJson(Map<String, dynamic> json) =>
//       _$CountryDetailModelFromJson(json);
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_detail_model.freezed.dart';
part 'country_detail_model.g.dart';

@freezed
class CountryDetailModel with _$CountryDetailModel {
  const factory CountryDetailModel({
    required Name name,
    required Flags flags,
    required int population,
    required List<String> capital,
    required String region,
    required String subregion,
    required double area,
    required List<String> timezones,
  }) = _CountryDetailModel;

  factory CountryDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CountryDetailModelFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String common,
    required String official,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) =>
      _$NameFromJson(json);
}

@freezed
class Flags with _$Flags {
  const factory Flags({
    required String png,
    required String svg,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) =>
      _$FlagsFromJson(json);
}