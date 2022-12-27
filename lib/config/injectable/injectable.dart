import 'package:get_it/get_it.dart';
import 'package:mynewsapp/constant/api_path.dart';

GetIt inject = GetIt.instance;

Future<void> setupLocator() async {
  /// Registering api endpoint
  inject.registerSingleton(ApiPath);
}
