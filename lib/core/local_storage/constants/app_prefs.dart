import '../../../exports.dart';
import '../../../service_locator.dart';

class AppPrefs {
  static String? token;
  static String language = 'ar';
  static String? deviceToken;
  static String? profileImage;

  static final SharedPreferences _preferences = ServiceLocator().getIt<SharedPreferences>();
  static const String prefsUsersKey = 'CACHED_USERS';
  static const String isLanguageSelectedKey = 'Language_SELECTED';
  static const String prefsLocationKey = 'CACHED_LOCATION';
  static const String prefsLanguageKey = 'LANGUAGE';
  static const String prefsUsersAddressKey = 'CACHED_USERS_ADDRESS';
  static const String prefsFavouriteKey = 'CACHED_FAVOURITE';
  static const String prefsLoggedInKey = "IS_LOGGED_IN";
  static const String prefsGetStatedKey = "GET_STARTED";
  static const String governoratesKey = "cities";
  static const String _newUserKey = "new user";
  static const String prefsUserKey = "User";
  static const String userFavouritesKey = "User favourites";
  static const String prefsTokenKey = 'TOKEN';
  static const String prefsDeviceTokenKey = 'DEVICE_TOKEN';
  static const String prefsNewInstallKey = 'NEW_INSTALLATION';

  static String adsKey = "ADS";
  // static UserModel? user;

  // static const String currentAppLoca
  Future<bool> get isUserLoggedIn async => _preferences.getBool(prefsLoggedInKey) ?? false;
  Future<void> get setUserLoggedIn async => _preferences.setBool(prefsLoggedInKey, true);

  static Future<void> get logout async => _preferences.remove(AppPrefs.prefsUsersKey);
  static Future<bool> get getStartedPressed async => _preferences.getBool(prefsGetStatedKey) ?? false;

  /*  used in splash screens to check if user is new or not to handle which screens to go */
  static bool get getIsNewUser => _preferences.getBool(_newUserKey) ?? true;
  static Future<bool> get setNewUser async => await _preferences.setBool(_newUserKey, false);
  static Future<bool> get removeToken async => await _preferences.remove(AppPrefs.prefsUsersKey);
}
