

import 'package:get_it/get_it.dart';

class ServiceLocator {
  GetIt getIt = GetIt.instance;

  /// Factory method that reuse same instance automatically

  static ServiceLocator instance =
      ServiceLocator._internal(); // named constructor

  /// Private constructor
  ServiceLocator._internal();
  factory ServiceLocator() => instance; // singleton
  Future<void> get init async {
    // await registerPrefs;
    // registerNetwork;

  }

  // get registerLanguage {
  //   getIt.registerLazySingleton<LanguageLocalDataSource>(
  //       () => LanguageImplWithPrefs(sharedPreferences: getIt()));
  //   getIt.registerLazySingleton<LanguageRepo>(
  //       () => LanguageRepoImpl(languageLocalDataSource: getIt()));
  //   getIt.registerLazySingleton<LanguageUseCases>(
  //       () => LanguageUseCases(languageRepo: getIt()));
  //   getIt.registerLazySingleton<LanguageCubit>(
  //       () => LanguageCubit(languageUseCases: getIt()));
  // }





}
