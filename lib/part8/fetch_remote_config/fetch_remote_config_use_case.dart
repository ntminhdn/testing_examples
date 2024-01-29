import 'package:testing_examples/part8/fetch_remote_config/model.dart';
import 'package:testing_examples/part8/fetch_remote_config/repository.dart';
import 'package:dartx/dartx.dart';

class FetchRemoteConfigUseCase {
  const FetchRemoteConfigUseCase(this.repository);

  final Repository repository;

  Future<UseCaseOutput> execute() async {
    final remoteConfig = await repository.fetchRemoteConfig();
    final currentAppVersion = _getCurrentAppVersion();
    var matchedVersion = _checkForceUpdate(remoteConfig.versionList, currentAppVersion);

    final lastRecommendTime = DateTime.tryParse(repository.showRecommendUpdateVersionTime);
    final lastShowImportantNotice = DateTime.tryParse(repository.showImportantNoticeTime);


    return UseCaseOutput(
      remoteConfig: matchedVersion?.config ?? remoteConfig.defaultConfig,
      needForceUpdate: matchedVersion == null,
      isFirstLogin: repository.isFirstLogin,
      recommendUpdateApp: matchedVersion?.config != null &&
          matchedVersion!.config.recommendUpdateVersion.isRecommendUpdate(lastRecommendTime),
      isShowImportantNotice: matchedVersion?.config != null &&
          matchedVersion!.config.importantNotice.isShowNotice(lastShowImportantNotice),
    );
  }

  Version _getCurrentAppVersion() {
    final versionName = RegExp(r'\d+')
        .allMatches(repository.currentAppVersion)
        .map((e) => int.tryParse(e.group(0) ?? '0'));

    return Version(
      major: versionName.elementAtOrNull(0) ?? 0,
      minor: versionName.elementAtOrNull(1) ?? 0,
      revision: versionName.elementAtOrNull(2) ?? 0,
      availableFrom: DateTime.now(),
      availableTo: DateTime.now(),
    );
  }

  Version? _checkForceUpdate(List<Version> remoteConfigVersions, Version currentAppVersion) {
    Version? currentConfig;
    for (final version in remoteConfigVersions.sortedDescending()) {
      if (version.isEqualWith(currentAppVersion)) {
        if (version.isAvailable) {
          currentConfig = version;
        }
        break;
      }

      if (currentAppVersion.isGreaterThan(version) && version.isAvailable) {
        if (currentConfig == null || version.isGreaterThan(currentConfig)) {
          currentConfig = version;
        }
      }
    }

    return currentConfig;
  }
}

class UseCaseOutput {
  const UseCaseOutput({
    required this.remoteConfig,
    required this.needForceUpdate,
    required this.isFirstLogin,
    required this.recommendUpdateApp,
    required this.isShowImportantNotice,
  });

  final Config remoteConfig;
  final bool needForceUpdate;
  final bool isFirstLogin;
  final bool recommendUpdateApp;
  final bool isShowImportantNotice;
}