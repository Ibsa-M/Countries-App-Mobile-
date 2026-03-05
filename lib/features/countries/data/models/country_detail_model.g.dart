// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryDetailModelImpl _$$CountryDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryDetailModelImpl(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      population: (json['population'] as num).toInt(),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      region: json['region'] as String,
      subregion: json['subregion'] as String,
      area: (json['area'] as num).toDouble(),
      timezones:
          (json['timezones'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CountryDetailModelImplToJson(
        _$CountryDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'population': instance.population,
      'capital': instance.capital,
      'region': instance.region,
      'subregion': instance.subregion,
      'area': instance.area,
      'timezones': instance.timezones,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      common: json['common'] as String,
      official: json['official'] as String,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };

_$FlagsImpl _$$FlagsImplFromJson(Map<String, dynamic> json) => _$FlagsImpl(
      png: json['png'] as String,
      svg: json['svg'] as String,
    );

Map<String, dynamic> _$$FlagsImplToJson(_$FlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
    };
