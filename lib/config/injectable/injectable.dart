import 'package:get_it/get_it.dart';
import 'package:mynewsapp/constant/api_path.dart';
import 'package:mynewsapp/services/navigation_services/navigation_services.dart';

GetIt inject = GetIt.instance;

Future<void> setupLocator() async {
  /// Registering api endpoint
  inject.registerSingleton(ApiPath);

  /// Registering navigation service
  inject.registerSingleton(NavigationServices());
}
