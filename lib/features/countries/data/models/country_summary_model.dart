import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_summary_model.freezed.dart';
part 'country_summary_model.g.dart';

@freezed
class CountrySummaryModel with _$CountrySummaryModel {
  const factory CountrySummaryModel({
    required Name name,
    required Flags flags,
    required int population,
    required String cca2,
  }) = _CountrySummaryModel;

  factory CountrySummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CountrySummaryModelFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String common,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) =>
      _$NameFromJson(json);
}

@freezed
class Flags with _$Flags {
  const factory Flags({
    required String png,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) =>
      _$FlagsFromJson(json);
}