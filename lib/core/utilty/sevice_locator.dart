import 'package:bookly/Features/Home/data/repo/home_repo_implementation.dart';
import 'package:bookly/core/utilty/api_service.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setup() {
  getit.registerSingleton<ApiService>(ApiService(dio: getit()));
  getit.registerSingleton<HomeRewpoImplementation>(
    HomeRewpoImplementation(apiService: getit()),
  );
}
