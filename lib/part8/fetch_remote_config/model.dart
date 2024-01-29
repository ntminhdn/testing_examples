import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class RemoteConfig with _$RemoteConfig {
  const RemoteConfig._();

  const factory RemoteConfig({
    @Default(<Version>[]) List<Version> versionList,
    @Default(Config()) Config defaultConfig,
  }) = _RemoteConfig;
}

@freezed
class Version with _$Version implements Comparable<Version> {
  const Version._();

  const factory Version({
    @Default(0) int major,
    @Default(0) int minor,
    @Default(0) int revision,
    @Default(null) DateTime? availableFrom,
    @Default(null) DateTime? availableTo,
    @Default(Config()) Config config,
  }) = _Version;

  bool get isAvailable =>
      availableFrom != null &&
      availableTo != null &&
      availableFrom!.isBefore(DateTime.now()) &&
      DateTime.now().isBefore(availableTo!);

  bool isGreaterThan(Version other) {
    if (major != other.major) {
      return major > other.major;
    }

    if (minor != other.minor) {
      return minor > other.minor;
    }

    return revision > other.revision;
  }

  bool isLessThan(Version other) {
    if (major != other.major) {
      return major < other.major;
    }

    if (minor != other.minor) {
      return minor < other.minor;
    }

    return revision < other.revision;
  }

  bool isEqualWith(Version other) {
    return major == other.major && minor == other.minor && revision == other.revision;
  }

  @override
  int compareTo(Version other) {
    if (isGreaterThan(other)) {
      return 1;
    } else if (isLessThan(other)) {
      return -1;
    } else {
      return 0;
    }
  }
}

@freezed
class Config with _$Config {
  const Config._();

  const factory Config({
    @Default(RecommendUpdateVersion()) RecommendUpdateVersion recommendUpdateVersion,
    @Default(ImportantNotice()) ImportantNotice importantNotice,
  }) = _Config;
}

@freezed
class ImportantNotice with _$ImportantNotice {
  const ImportantNotice._();

  const factory ImportantNotice({
    @Default(false) bool isShow,
    @Default(0) int frequencyDays,
    @Default('') String textContents,
  }) = _ImportantNotice;

  bool isShowNotice(DateTime? lastShowedTime) {
    return isShow &&
        textContents.isNotEmpty &&
        (lastShowedTime == null ||
            (DateTime.now().difference(lastShowedTime).inSeconds >
                    Duration(days: frequencyDays).inSeconds &&
                frequencyDays > -1));
  }
}

@freezed
class RecommendUpdateVersion with _$RecommendUpdateVersion {
  const RecommendUpdateVersion._();

  const factory RecommendUpdateVersion({
    @Default(false) bool isShow,
    @Default(0) int frequencyDays,
  }) = _RecommendUpdateVersion;

  bool isRecommendUpdate(DateTime? lastRecommendTime) {
    return isShow &&
        (lastRecommendTime == null ||
            (DateTime.now().difference(lastRecommendTime).inSeconds >
                    Duration(days: frequencyDays).inSeconds &&
                frequencyDays > -1));
  }
}
