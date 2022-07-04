import 'package:core/core.dart';
import 'package:injectable/injectable.dart';

abstract class AppBuildMode {
  static AppBuildMode? currentBuildMode;

  final BuildMode mode;
  final AppTokenStorage appTokenStorage;

  AppBuildMode(this.mode, this.appTokenStorage);

  NetWorkMode get appNetworkMode;

  NetWorkMode get marketNetworkMode;

  NetWorkMode get authNetworkMode;

  NetWorkMode get locationNetworkMode;

  NetWorkMode get notifyNetworkMode;

  NetWorkMode get reviewNetworkMode;

  NetWorkMode get rewardNetworkMode;

  Map<String, dynamic> get variables;
}

@Injectable(as: AppBuildMode, env: ['demo'])
class DemoBuildMode extends AppBuildMode {
  DemoBuildMode() : super(BuildMode.demo, AppTokenStorage());

  @override
  Map<String, dynamic> get variables => {
        'api_media': 'http://mediademo.cooky.vn/',
        'dynamic_link': 'https://app.demo.cooky.vn/share',
        'about_url': 'https://www.cooky.vn/ve-cooky',
      };

  @override
  NetWorkMode get appNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-app-api.cooky.com.vn/api/',
      );

  @override
  NetWorkMode get authNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-auth-api.cooky.com.vn/',
      );

  @override
  NetWorkMode get locationNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-location-api.cooky.com.vn/api/',
      );

  @override
  NetWorkMode get marketNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://marketapidemo.cooky.vn/',
      );

  @override
  NetWorkMode get notifyNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-notify-api.cooky.com.vn/api/notify/',
      );

  @override
  NetWorkMode get reviewNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-review-api.cooky.com.vn/api/review/',
      );

  @override
  NetWorkMode get rewardNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-reward-api.cooky.com.vn/api/reward/',
      );
}

@Injectable(as: AppBuildMode, env: ['stage'])
class StageBuildMode extends AppBuildMode {
  StageBuildMode() : super(BuildMode.stage, AppTokenStorage());

  @override
  Map<String, dynamic> get variables => {
        'api_media': 'http://mediademo.cooky.vn/',
        'dynamic_link': 'https://app.demo.cooky.vn/share',
        'about_url': 'https://www.cooky.vn/ve-cooky',
      };

  @override
  NetWorkMode get appNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-app-api.cooky.com.vn/api/',
      );

  @override
  NetWorkMode get authNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-auth-api.cooky.com.vn/',
      );

  @override
  NetWorkMode get locationNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-location-api.cooky.com.vn/api/',
      );

  @override
  NetWorkMode get marketNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://marketapidemo.cooky.vn/',
      );

  @override
  NetWorkMode get notifyNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-notify-api.cooky.com.vn/api/notify/',
      );

  @override
  NetWorkMode get reviewNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-review-api.cooky.com.vn/api/review/',
      );

  @override
  NetWorkMode get rewardNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-reward-api.cooky.com.vn/api/reward/',
      );
}

@Injectable(as: AppBuildMode, env: ['live'])
class LiveBuildMode extends AppBuildMode {
  LiveBuildMode() : super(BuildMode.live, AppTokenStorage());

  @override
  Map<String, dynamic> get variables => {
        'api_media': 'http://mediademo.cooky.vn/',
        'dynamic_link': 'https://app.demo.cooky.vn/share',
        'about_url': 'https://www.cooky.vn/ve-cooky',
      };

  @override
  NetWorkMode get appNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-app-api.cooky.com.vn/api/',
      );

  @override
  NetWorkMode get authNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-auth-api.cooky.com.vn/',
      );

  @override
  NetWorkMode get locationNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-location-api.cooky.com.vn/api/',
      );

  @override
  NetWorkMode get marketNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://marketapidemo.cooky.vn/',
      );

  @override
  NetWorkMode get notifyNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-notify-api.cooky.com.vn/api/notify/',
      );

  @override
  NetWorkMode get reviewNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-review-api.cooky.com.vn/api/review/',
      );

  @override
  NetWorkMode get rewardNetworkMode => DevelopmentMode(
        localDBName: 'local_cooky_demo.db',
        baseUrl: 'https://test-reward-api.cooky.com.vn/api/reward/',
      );
}
