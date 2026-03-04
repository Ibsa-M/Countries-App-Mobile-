// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountrySummaryModel _$CountrySummaryModelFromJson(Map<String, dynamic> json) {
  return _CountrySummaryModel.fromJson(json);
}

/// @nodoc
mixin _$CountrySummaryModel {
  Name get name => throw _privateConstructorUsedError;
  Flags get flags => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  String get cca2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountrySummaryModelCopyWith<CountrySummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountrySummaryModelCopyWith<$Res> {
  factory $CountrySummaryModelCopyWith(
          CountrySummaryModel value, $Res Function(CountrySummaryModel) then) =
      _$CountrySummaryModelCopyWithImpl<$Res, CountrySummaryModel>;
  @useResult
  $Res call({Name name, Flags flags, int population, String cca2});

  $NameCopyWith<$Res> get name;
  $FlagsCopyWith<$Res> get flags;
}

/// @nodoc
class _$CountrySummaryModelCopyWithImpl<$Res, $Val extends CountrySummaryModel>
    implements $CountrySummaryModelCopyWith<$Res> {
  _$CountrySummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? flags = null,
    Object? population = null,
    Object? cca2 = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      cca2: null == cca2
          ? _value.cca2
          : cca2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<$Res> get flags {
    return $FlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountrySummaryModelImplCopyWith<$Res>
    implements $CountrySummaryModelCopyWith<$Res> {
  factory _$$CountrySummaryModelImplCopyWith(_$CountrySummaryModelImpl value,
          $Res Function(_$CountrySummaryModelImpl) then) =
      __$$CountrySummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Name name, Flags flags, int population, String cca2});

  @override
  $NameCopyWith<$Res> get name;
  @override
  $FlagsCopyWith<$Res> get flags;
}

/// @nodoc
class __$$CountrySummaryModelImplCopyWithImpl<$Res>
    extends _$CountrySummaryModelCopyWithImpl<$Res, _$CountrySummaryModelImpl>
    implements _$$CountrySummaryModelImplCopyWith<$Res> {
  __$$CountrySummaryModelImplCopyWithImpl(_$CountrySummaryModelImpl _value,
      $Res Function(_$CountrySummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? flags = null,
    Object? population = null,
    Object? cca2 = null,
  }) {
    return _then(_$CountrySummaryModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      cca2: null == cca2
          ? _value.cca2
          : cca2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountrySummaryModelImpl implements _CountrySummaryModel {
  const _$CountrySummaryModelImpl(
      {required this.name,
      required this.flags,
      required this.population,
      required this.cca2});

  factory _$CountrySummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountrySummaryModelImplFromJson(json);

  @override
  final Name name;
  @override
  final Flags flags;
  @override
  final int population;
  @override
  final String cca2;

  @override
  String toString() {
    return 'CountrySummaryModel(name: $name, flags: $flags, population: $population, cca2: $cca2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountrySummaryModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.cca2, cca2) || other.cca2 == cca2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, flags, population, cca2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountrySummaryModelImplCopyWith<_$CountrySummaryModelImpl> get copyWith =>
      __$$CountrySummaryModelImplCopyWithImpl<_$CountrySummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountrySummaryModelImplToJson(
      this,
    );
  }
}

abstract class _CountrySummaryModel implements CountrySummaryModel {
  const factory _CountrySummaryModel(
      {required final Name name,
      required final Flags flags,
      required final int population,
      required final String cca2}) = _$CountrySummaryModelImpl;

  factory _CountrySummaryModel.fromJson(Map<String, dynamic> json) =
      _$CountrySummaryModelImpl.fromJson;

  @override
  Name get name;
  @override
  Flags get flags;
  @override
  int get population;
  @override
  String get cca2;
  @override
  @JsonKey(ignore: true)
  _$$CountrySummaryModelImplCopyWith<_$CountrySummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get common => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call({String common});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
  }) {
    return _then(_$NameImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameImpl implements _Name {
  const _$NameImpl({required this.common});

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  final String common;

  @override
  String toString() {
    return 'Name(common: $common)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.common, common) || other.common == common));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, common);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name({required final String common}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  String get common;
  @override
  @JsonKey(ignore: true)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
mixin _$Flags {
  String get png => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res, Flags>;
  @useResult
  $Res call({String png});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res, $Val extends Flags>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
  }) {
    return _then(_value.copyWith(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagsImplCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$FlagsImplCopyWith(
          _$FlagsImpl value, $Res Function(_$FlagsImpl) then) =
      __$$FlagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png});
}

/// @nodoc
class __$$FlagsImplCopyWithImpl<$Res>
    extends _$FlagsCopyWithImpl<$Res, _$FlagsImpl>
    implements _$$FlagsImplCopyWith<$Res> {
  __$$FlagsImplCopyWithImpl(
      _$FlagsImpl _value, $Res Function(_$FlagsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
  }) {
    return _then(_$FlagsImpl(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagsImpl implements _Flags {
  const _$FlagsImpl({required this.png});

  factory _$FlagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagsImplFromJson(json);

  @override
  final String png;

  @override
  String toString() {
    return 'Flags(png: $png)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsImpl &&
            (identical(other.png, png) || other.png == png));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, png);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      __$$FlagsImplCopyWithImpl<_$FlagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagsImplToJson(
      this,
    );
  }
}

abstract class _Flags implements Flags {
  const factory _Flags({required final String png}) = _$FlagsImpl;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$FlagsImpl.fromJson;

  @override
  String get png;
  @override
  @JsonKey(ignore: true)
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
