import 'package:envify/envify.dart';

part 'env.g.dart';

///Required Environment

@Envify(path: '.env')
abstract class Env {
  static const String appName = _Env.appName;
  static const int apiConnectTimeout = _Env.apiConnectTimeout;
  static const int apiReceiveTimeout = _Env.apiReceiveTimeout;
  static const String apiKey = _Env.apiKey;
  static const String urlService = _Env.urlService;
}
