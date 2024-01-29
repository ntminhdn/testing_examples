// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteConfig {
  List<Version> get versionList => throw _privateConstructorUsedError;
  Config get defaultConfig => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteConfigCopyWith<RemoteConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteConfigCopyWith<$Res> {
  factory $RemoteConfigCopyWith(
          RemoteConfig value, $Res Function(RemoteConfig) then) =
      _$RemoteConfigCopyWithImpl<$Res, RemoteConfig>;
  @useResult
  $Res call({List<Version> versionList, Config defaultConfig});

  $ConfigCopyWith<$Res> get defaultConfig;
}

/// @nodoc
class _$RemoteConfigCopyWithImpl<$Res, $Val extends RemoteConfig>
    implements $RemoteConfigCopyWith<$Res> {
  _$RemoteConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionList = null,
    Object? defaultConfig = null,
  }) {
    return _then(_value.copyWith(
      versionList: null == versionList
          ? _value.versionList
          : versionList // ignore: cast_nullable_to_non_nullable
              as List<Version>,
      defaultConfig: null == defaultConfig
          ? _value.defaultConfig
          : defaultConfig // ignore: cast_nullable_to_non_nullable
              as Config,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigCopyWith<$Res> get defaultConfig {
    return $ConfigCopyWith<$Res>(_value.defaultConfig, (value) {
      return _then(_value.copyWith(defaultConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteConfigCopyWith<$Res>
    implements $RemoteConfigCopyWith<$Res> {
  factory _$$_RemoteConfigCopyWith(
          _$_RemoteConfig value, $Res Function(_$_RemoteConfig) then) =
      __$$_RemoteConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Version> versionList, Config defaultConfig});

  @override
  $ConfigCopyWith<$Res> get defaultConfig;
}

/// @nodoc
class __$$_RemoteConfigCopyWithImpl<$Res>
    extends _$RemoteConfigCopyWithImpl<$Res, _$_RemoteConfig>
    implements _$$_RemoteConfigCopyWith<$Res> {
  __$$_RemoteConfigCopyWithImpl(
      _$_RemoteConfig _value, $Res Function(_$_RemoteConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionList = null,
    Object? defaultConfig = null,
  }) {
    return _then(_$_RemoteConfig(
      versionList: null == versionList
          ? _value._versionList
          : versionList // ignore: cast_nullable_to_non_nullable
              as List<Version>,
      defaultConfig: null == defaultConfig
          ? _value.defaultConfig
          : defaultConfig // ignore: cast_nullable_to_non_nullable
              as Config,
    ));
  }
}

/// @nodoc

class _$_RemoteConfig extends _RemoteConfig {
  const _$_RemoteConfig(
      {final List<Version> versionList = const <Version>[],
      this.defaultConfig = const Config()})
      : _versionList = versionList,
        super._();

  final List<Version> _versionList;
  @override
  @JsonKey()
  List<Version> get versionList {
    if (_versionList is EqualUnmodifiableListView) return _versionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionList);
  }

  @override
  @JsonKey()
  final Config defaultConfig;

  @override
  String toString() {
    return 'RemoteConfig(versionList: $versionList, defaultConfig: $defaultConfig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteConfig &&
            const DeepCollectionEquality()
                .equals(other._versionList, _versionList) &&
            (identical(other.defaultConfig, defaultConfig) ||
                other.defaultConfig == defaultConfig));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_versionList), defaultConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteConfigCopyWith<_$_RemoteConfig> get copyWith =>
      __$$_RemoteConfigCopyWithImpl<_$_RemoteConfig>(this, _$identity);
}

abstract class _RemoteConfig extends RemoteConfig {
  const factory _RemoteConfig(
      {final List<Version> versionList,
      final Config defaultConfig}) = _$_RemoteConfig;
  const _RemoteConfig._() : super._();

  @override
  List<Version> get versionList;
  @override
  Config get defaultConfig;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteConfigCopyWith<_$_RemoteConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Version {
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;
  DateTime? get availableFrom => throw _privateConstructorUsedError;
  DateTime? get availableTo => throw _privateConstructorUsedError;
  Config get config => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionCopyWith<Version> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionCopyWith<$Res> {
  factory $VersionCopyWith(Version value, $Res Function(Version) then) =
      _$VersionCopyWithImpl<$Res, Version>;
  @useResult
  $Res call(
      {int major,
      int minor,
      int revision,
      DateTime? availableFrom,
      DateTime? availableTo,
      Config config});

  $ConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$VersionCopyWithImpl<$Res, $Val extends Version>
    implements $VersionCopyWith<$Res> {
  _$VersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? revision = null,
    Object? availableFrom = freezed,
    Object? availableTo = freezed,
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      availableFrom: freezed == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableTo: freezed == availableTo
          ? _value.availableTo
          : availableTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigCopyWith<$Res> get config {
    return $ConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionCopyWith<$Res> implements $VersionCopyWith<$Res> {
  factory _$$_VersionCopyWith(
          _$_Version value, $Res Function(_$_Version) then) =
      __$$_VersionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int major,
      int minor,
      int revision,
      DateTime? availableFrom,
      DateTime? availableTo,
      Config config});

  @override
  $ConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$_VersionCopyWithImpl<$Res>
    extends _$VersionCopyWithImpl<$Res, _$_Version>
    implements _$$_VersionCopyWith<$Res> {
  __$$_VersionCopyWithImpl(_$_Version _value, $Res Function(_$_Version) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? revision = null,
    Object? availableFrom = freezed,
    Object? availableTo = freezed,
    Object? config = null,
  }) {
    return _then(_$_Version(
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      availableFrom: freezed == availableFrom
          ? _value.availableFrom
          : availableFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableTo: freezed == availableTo
          ? _value.availableTo
          : availableTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config,
    ));
  }
}

/// @nodoc

class _$_Version extends _Version {
  const _$_Version(
      {this.major = 0,
      this.minor = 0,
      this.revision = 0,
      this.availableFrom = null,
      this.availableTo = null,
      this.config = const Config()})
      : super._();

  @override
  @JsonKey()
  final int major;
  @override
  @JsonKey()
  final int minor;
  @override
  @JsonKey()
  final int revision;
  @override
  @JsonKey()
  final DateTime? availableFrom;
  @override
  @JsonKey()
  final DateTime? availableTo;
  @override
  @JsonKey()
  final Config config;

  @override
  String toString() {
    return 'Version(major: $major, minor: $minor, revision: $revision, availableFrom: $availableFrom, availableTo: $availableTo, config: $config)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Version &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.availableFrom, availableFrom) ||
                other.availableFrom == availableFrom) &&
            (identical(other.availableTo, availableTo) ||
                other.availableTo == availableTo) &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, major, minor, revision, availableFrom, availableTo, config);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionCopyWith<_$_Version> get copyWith =>
      __$$_VersionCopyWithImpl<_$_Version>(this, _$identity);
}

abstract class _Version extends Version {
  const factory _Version(
      {final int major,
      final int minor,
      final int revision,
      final DateTime? availableFrom,
      final DateTime? availableTo,
      final Config config}) = _$_Version;
  const _Version._() : super._();

  @override
  int get major;
  @override
  int get minor;
  @override
  int get revision;
  @override
  DateTime? get availableFrom;
  @override
  DateTime? get availableTo;
  @override
  Config get config;
  @override
  @JsonKey(ignore: true)
  _$$_VersionCopyWith<_$_Version> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Config {
  RecommendUpdateVersion get recommendUpdateVersion =>
      throw _privateConstructorUsedError;
  ImportantNotice get importantNotice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res, Config>;
  @useResult
  $Res call(
      {RecommendUpdateVersion recommendUpdateVersion,
      ImportantNotice importantNotice});

  $RecommendUpdateVersionCopyWith<$Res> get recommendUpdateVersion;
  $ImportantNoticeCopyWith<$Res> get importantNotice;
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res, $Val extends Config>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendUpdateVersion = null,
    Object? importantNotice = null,
  }) {
    return _then(_value.copyWith(
      recommendUpdateVersion: null == recommendUpdateVersion
          ? _value.recommendUpdateVersion
          : recommendUpdateVersion // ignore: cast_nullable_to_non_nullable
              as RecommendUpdateVersion,
      importantNotice: null == importantNotice
          ? _value.importantNotice
          : importantNotice // ignore: cast_nullable_to_non_nullable
              as ImportantNotice,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecommendUpdateVersionCopyWith<$Res> get recommendUpdateVersion {
    return $RecommendUpdateVersionCopyWith<$Res>(_value.recommendUpdateVersion,
        (value) {
      return _then(_value.copyWith(recommendUpdateVersion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImportantNoticeCopyWith<$Res> get importantNotice {
    return $ImportantNoticeCopyWith<$Res>(_value.importantNotice, (value) {
      return _then(_value.copyWith(importantNotice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$_ConfigCopyWith(_$_Config value, $Res Function(_$_Config) then) =
      __$$_ConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecommendUpdateVersion recommendUpdateVersion,
      ImportantNotice importantNotice});

  @override
  $RecommendUpdateVersionCopyWith<$Res> get recommendUpdateVersion;
  @override
  $ImportantNoticeCopyWith<$Res> get importantNotice;
}

/// @nodoc
class __$$_ConfigCopyWithImpl<$Res>
    extends _$ConfigCopyWithImpl<$Res, _$_Config>
    implements _$$_ConfigCopyWith<$Res> {
  __$$_ConfigCopyWithImpl(_$_Config _value, $Res Function(_$_Config) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendUpdateVersion = null,
    Object? importantNotice = null,
  }) {
    return _then(_$_Config(
      recommendUpdateVersion: null == recommendUpdateVersion
          ? _value.recommendUpdateVersion
          : recommendUpdateVersion // ignore: cast_nullable_to_non_nullable
              as RecommendUpdateVersion,
      importantNotice: null == importantNotice
          ? _value.importantNotice
          : importantNotice // ignore: cast_nullable_to_non_nullable
              as ImportantNotice,
    ));
  }
}

/// @nodoc

class _$_Config extends _Config {
  const _$_Config(
      {this.recommendUpdateVersion = const RecommendUpdateVersion(),
      this.importantNotice = const ImportantNotice()})
      : super._();

  @override
  @JsonKey()
  final RecommendUpdateVersion recommendUpdateVersion;
  @override
  @JsonKey()
  final ImportantNotice importantNotice;

  @override
  String toString() {
    return 'Config(recommendUpdateVersion: $recommendUpdateVersion, importantNotice: $importantNotice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Config &&
            (identical(other.recommendUpdateVersion, recommendUpdateVersion) ||
                other.recommendUpdateVersion == recommendUpdateVersion) &&
            (identical(other.importantNotice, importantNotice) ||
                other.importantNotice == importantNotice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, recommendUpdateVersion, importantNotice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      __$$_ConfigCopyWithImpl<_$_Config>(this, _$identity);
}

abstract class _Config extends Config {
  const factory _Config(
      {final RecommendUpdateVersion recommendUpdateVersion,
      final ImportantNotice importantNotice}) = _$_Config;
  const _Config._() : super._();

  @override
  RecommendUpdateVersion get recommendUpdateVersion;
  @override
  ImportantNotice get importantNotice;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigCopyWith<_$_Config> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImportantNotice {
  bool get isShow => throw _privateConstructorUsedError;
  int get frequencyDays => throw _privateConstructorUsedError;
  String get textContents => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImportantNoticeCopyWith<ImportantNotice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportantNoticeCopyWith<$Res> {
  factory $ImportantNoticeCopyWith(
          ImportantNotice value, $Res Function(ImportantNotice) then) =
      _$ImportantNoticeCopyWithImpl<$Res, ImportantNotice>;
  @useResult
  $Res call({bool isShow, int frequencyDays, String textContents});
}

/// @nodoc
class _$ImportantNoticeCopyWithImpl<$Res, $Val extends ImportantNotice>
    implements $ImportantNoticeCopyWith<$Res> {
  _$ImportantNoticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShow = null,
    Object? frequencyDays = null,
    Object? textContents = null,
  }) {
    return _then(_value.copyWith(
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
      frequencyDays: null == frequencyDays
          ? _value.frequencyDays
          : frequencyDays // ignore: cast_nullable_to_non_nullable
              as int,
      textContents: null == textContents
          ? _value.textContents
          : textContents // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImportantNoticeCopyWith<$Res>
    implements $ImportantNoticeCopyWith<$Res> {
  factory _$$_ImportantNoticeCopyWith(
          _$_ImportantNotice value, $Res Function(_$_ImportantNotice) then) =
      __$$_ImportantNoticeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isShow, int frequencyDays, String textContents});
}

/// @nodoc
class __$$_ImportantNoticeCopyWithImpl<$Res>
    extends _$ImportantNoticeCopyWithImpl<$Res, _$_ImportantNotice>
    implements _$$_ImportantNoticeCopyWith<$Res> {
  __$$_ImportantNoticeCopyWithImpl(
      _$_ImportantNotice _value, $Res Function(_$_ImportantNotice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShow = null,
    Object? frequencyDays = null,
    Object? textContents = null,
  }) {
    return _then(_$_ImportantNotice(
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
      frequencyDays: null == frequencyDays
          ? _value.frequencyDays
          : frequencyDays // ignore: cast_nullable_to_non_nullable
              as int,
      textContents: null == textContents
          ? _value.textContents
          : textContents // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImportantNotice extends _ImportantNotice {
  const _$_ImportantNotice(
      {this.isShow = false, this.frequencyDays = 0, this.textContents = ''})
      : super._();

  @override
  @JsonKey()
  final bool isShow;
  @override
  @JsonKey()
  final int frequencyDays;
  @override
  @JsonKey()
  final String textContents;

  @override
  String toString() {
    return 'ImportantNotice(isShow: $isShow, frequencyDays: $frequencyDays, textContents: $textContents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportantNotice &&
            (identical(other.isShow, isShow) || other.isShow == isShow) &&
            (identical(other.frequencyDays, frequencyDays) ||
                other.frequencyDays == frequencyDays) &&
            (identical(other.textContents, textContents) ||
                other.textContents == textContents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isShow, frequencyDays, textContents);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportantNoticeCopyWith<_$_ImportantNotice> get copyWith =>
      __$$_ImportantNoticeCopyWithImpl<_$_ImportantNotice>(this, _$identity);
}

abstract class _ImportantNotice extends ImportantNotice {
  const factory _ImportantNotice(
      {final bool isShow,
      final int frequencyDays,
      final String textContents}) = _$_ImportantNotice;
  const _ImportantNotice._() : super._();

  @override
  bool get isShow;
  @override
  int get frequencyDays;
  @override
  String get textContents;
  @override
  @JsonKey(ignore: true)
  _$$_ImportantNoticeCopyWith<_$_ImportantNotice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecommendUpdateVersion {
  bool get isShow => throw _privateConstructorUsedError;
  int get frequencyDays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendUpdateVersionCopyWith<RecommendUpdateVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendUpdateVersionCopyWith<$Res> {
  factory $RecommendUpdateVersionCopyWith(RecommendUpdateVersion value,
          $Res Function(RecommendUpdateVersion) then) =
      _$RecommendUpdateVersionCopyWithImpl<$Res, RecommendUpdateVersion>;
  @useResult
  $Res call({bool isShow, int frequencyDays});
}

/// @nodoc
class _$RecommendUpdateVersionCopyWithImpl<$Res,
        $Val extends RecommendUpdateVersion>
    implements $RecommendUpdateVersionCopyWith<$Res> {
  _$RecommendUpdateVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShow = null,
    Object? frequencyDays = null,
  }) {
    return _then(_value.copyWith(
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
      frequencyDays: null == frequencyDays
          ? _value.frequencyDays
          : frequencyDays // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecommendUpdateVersionCopyWith<$Res>
    implements $RecommendUpdateVersionCopyWith<$Res> {
  factory _$$_RecommendUpdateVersionCopyWith(_$_RecommendUpdateVersion value,
          $Res Function(_$_RecommendUpdateVersion) then) =
      __$$_RecommendUpdateVersionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isShow, int frequencyDays});
}

/// @nodoc
class __$$_RecommendUpdateVersionCopyWithImpl<$Res>
    extends _$RecommendUpdateVersionCopyWithImpl<$Res,
        _$_RecommendUpdateVersion>
    implements _$$_RecommendUpdateVersionCopyWith<$Res> {
  __$$_RecommendUpdateVersionCopyWithImpl(_$_RecommendUpdateVersion _value,
      $Res Function(_$_RecommendUpdateVersion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShow = null,
    Object? frequencyDays = null,
  }) {
    return _then(_$_RecommendUpdateVersion(
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
      frequencyDays: null == frequencyDays
          ? _value.frequencyDays
          : frequencyDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RecommendUpdateVersion extends _RecommendUpdateVersion {
  const _$_RecommendUpdateVersion({this.isShow = false, this.frequencyDays = 0})
      : super._();

  @override
  @JsonKey()
  final bool isShow;
  @override
  @JsonKey()
  final int frequencyDays;

  @override
  String toString() {
    return 'RecommendUpdateVersion(isShow: $isShow, frequencyDays: $frequencyDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecommendUpdateVersion &&
            (identical(other.isShow, isShow) || other.isShow == isShow) &&
            (identical(other.frequencyDays, frequencyDays) ||
                other.frequencyDays == frequencyDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShow, frequencyDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecommendUpdateVersionCopyWith<_$_RecommendUpdateVersion> get copyWith =>
      __$$_RecommendUpdateVersionCopyWithImpl<_$_RecommendUpdateVersion>(
          this, _$identity);
}

abstract class _RecommendUpdateVersion extends RecommendUpdateVersion {
  const factory _RecommendUpdateVersion(
      {final bool isShow, final int frequencyDays}) = _$_RecommendUpdateVersion;
  const _RecommendUpdateVersion._() : super._();

  @override
  bool get isShow;
  @override
  int get frequencyDays;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendUpdateVersionCopyWith<_$_RecommendUpdateVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
