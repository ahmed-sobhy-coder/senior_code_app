import 'dart:math';



import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:senior_code_app/core/enums.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../app_service.dart';
import '../config/constants/app_constants.dart';
import '../exports.dart';
import '../service_locator.dart';
import 'network/constants/constants.dart';
import 'network/error_handler/error_handler.dart';
import 'network/network_enums.dart';
import 'permission_handler.dart';
import 'resonse_messages.dart';
import 'response_code.dart';
import 'widgets/permission_dialog.dart';

Map<String, dynamic>? getArguments(BuildContext context) =>
    (ModalRoute.of(context))!.settings.arguments as Map<String, dynamic>?;

Future getCameraImage({bool isCamera = true}) async {
  final pickedImage = await ImagePicker().pickImage(
      imageQuality: 60,
      source: isCamera ? ImageSource.camera : ImageSource.gallery);

  return File(pickedImage!.path);
}

Future<List<File>> getMultipleImageSource({bool isCamera = true}) async {
  final List<XFile> pickedImage = await ImagePicker().pickMultiImage(
    imageQuality: 60,
  );
  return pickedImage.map((e) => File(e.path)).toList();
}

Future<String> get getFromGallery async {
  List<File> files = await getMultipleImageSource();
  return files[0].path;
}

Future<String> get getImageFromCamera async {
  File file = await getCameraImage();

  return file.path;
}

Future<String?> showPickDialog(BuildContext context, String? image) async {
  GalleryFileTypes? galleryFileTypes =
      await AppService().showInDialog<GalleryFileTypes>(
    //textDirection: AppService().getBlocData<LanguageCubit>().isEn ? TextDirection.ltr : TextDirection.rtl,
    contentPadding: const EdgeInsets.symmetric(vertical: 16),
    title: AppStrings().chooseAction.trans,
    titleTextStyle: getBoldTextStyle(fontSize: 16, color: Colors.amber),
    // builder: (_) => FilePickerDialog(isSelected: (image.isNotNull)),
  );
  if (galleryFileTypes.isNotNull) {
    if (galleryFileTypes.isEqualTo(GalleryFileTypes.CAMERA)) {
      // image = await getImageFromCamera;
    } else if (galleryFileTypes.isEqualTo(GalleryFileTypes.GALLERY)) {
      image = await getFromGallery;
    } else if (galleryFileTypes.isEqualTo(GalleryFileTypes.REMOVE)) {
      image = null;
    }
  }
  return image;
}

String getTimeString(int? time) {
  if (time.isNotNull) {
    // Calculate the number of hours.
    int hours = time! ~/ 3600;

    // Calculate the remaining minutes.
    int minutes = ((time % 3600) / 60).roundToDouble().toInt();

    // Calculate the remaining seconds.
    int seconds = time % 60;

    // If the time is greater than or equal to 1 hour, return a string representing the time in hours.
    if (hours >= 1) {
      return "$hours ${AppStrings().hours}";
    }

    // If the time is greater than or equal to 1 minute, return a string representing the time in minutes.
    else if (minutes >= 1) {
      return "$minutes ِ${AppStrings().minutes}";
    }

    // Otherwise, return a string representing the time in seconds.
    else {
      return "$seconds ${AppStrings().seconds}";
    }
  } else {
    return AppConstants.empty;
  }
}

double radians(double degrees) => degrees * _degrees2Radians;
const double _degrees2Radians = pi / 180.0;

Widget dialogAnimatedWrapperWidget({
  required Animation<double> animation,
  required Widget child,
  required DialogAnimation dialogAnimation,
  required Curve curve,
}) {
  switch (dialogAnimation) {
    case DialogAnimation.ROTATE:
      return Transform.rotate(
        angle: radians(animation.value * 360),
        child: Opacity(
          opacity: animation.value,
          child: FadeTransition(opacity: animation, child: child),
        ),
      );

    case DialogAnimation.SLIDE_TOP_BOTTOM:
      final curvedValue = curve.transform(animation.value) - 1.0;

      return Transform(
        transform: Matrix4.translationValues(0.0, curvedValue * 300, 0.0),
        child: Opacity(
          opacity: animation.value,
          child: FadeTransition(opacity: animation, child: child),
        ),
      );

    case DialogAnimation.SCALE:
      return Transform.scale(
        scale: animation.value,
        child: FadeTransition(opacity: animation, child: child),
      );

    case DialogAnimation.SLIDE_BOTTOM_TOP:
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: Offset.zero)
            .chain(CurveTween(curve: curve))
            .animate(animation),
        child: Opacity(
          opacity: animation.value,
          child: FadeTransition(opacity: animation, child: child),
        ),
      );

    case DialogAnimation.SLIDE_LEFT_RIGHT:
      return SlideTransition(
        position: Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
            .chain(CurveTween(curve: curve))
            .animate(animation),
        child: Opacity(
          opacity: animation.value,
          child: FadeTransition(opacity: animation, child: child),
        ),
      );

    case DialogAnimation.SLIDE_RIGHT_LEFT:
      return SlideTransition(
        position: Tween(begin: const Offset(-1, 0), end: Offset.zero)
            .chain(CurveTween(curve: curve))
            .animate(animation),
        child: Opacity(
          opacity: animation.value,
          child: FadeTransition(opacity: animation, child: child),
        ),
      );

    case DialogAnimation.DEFAULT:
      return FadeTransition(opacity: animation, child: child);
  }
}

/// returns true if network is available
PermissionManager permissionManager =
    ServiceLocator().getIt<PermissionManager>();
Future<bool> checkConnection() async {
  final List<ConnectivityResult> connectivityResult =
      await (Connectivity().checkConnectivity());
// This condition is for demo purposes only to explain every connection type.
// Use conditions which work for your requirements.
  if (connectivityResult.contains(ConnectivityResult.mobile) ||
      (connectivityResult.contains(ConnectivityResult.wifi) ||
          !(connectivityResult.contains(ConnectivityResult.none)))) {
    return true;
    // Mobile network available.
  }
  return false;
}

Future<Either<Failure, ResponseListModel>> executeList(
    Function() function) async {
  /// Check if an internet connection is available before proceeding with the request.
  if (await checkConnection()) {
    try {
      /// Execute the provided function and await the result (assumed to be a `ResponseModel`).
      ResponseListModel value = await function.call();

      /// Check the status of the response (`ResponseModel.status`).
      if (value.status.isTrue) {
        /// Successful response (status is true). Extract data using `value.data` and return it as `Right(value.data)`.
        return Right(value);
      } else {
        /// Unsuccessful response (status is false). Extract error code and message from the response model
        /// and create a `Left` with a `Failure` object containing the extracted information.
        return Left(Failure(value.code!.toInt, value.message!));
      }
    } catch (error) {
      /// Handle any exceptions that might occur during execution.
      /// Delegate error handling to an `ErrorHandler` instance and return the resulting `Left(Failure)`.
      return Left(ErrorHandler().handle(error));
    }
  } else {
    /// No internet connection detected. Return a `Left` with a pre-defined `Failure` for no internet connection.
    return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
  }
}

/// This function handles the response received from a network request using Dio.
/// It throws specific `DioException` types based on the response status code.
Future<dynamic> handleResponse(Response response) async {
  /// Switch statement to handle different response status codes.
  switch (response.statusCode) {
    /// Handle specific client-side error codes by throwing a `DioException.badResponse`.
    case ResponseCode.BAD_REQUEST:
    case ResponseCode.UNAUTHORISED:
    case ResponseCode.FORBIDDEN:
    case ResponseCode.NOT_FOUND:
      throw DioException.badResponse(
          statusCode: ResponseCode
              .BAD_REQUEST, // Consistent error code for client-side errors
          requestOptions: response.requestOptions,
          response: response);

    /// Handle connection timeout error by throwing a `DioException.connectionTimeout`.
    case ResponseCode.CONNECT_TIMEOUT:
      throw DioException.connectionTimeout(
        timeout:
            ApiConstants.connectTimeOut, // Use timeout value from ApiConstants
        requestOptions: response.requestOptions,
      );

    /// Handle send timeout error by throwing a `DioException.sendTimeout`.
    case ResponseCode.SEND_TIMEOUT:
      throw DioException.sendTimeout(
        timeout:
            ApiConstants.sendTimeOut, // Use timeout value from ApiConstants
        requestOptions: response.requestOptions,
      );

    /// Handle successful response (status code 200) by decoding the response data as JSON.
    case ResponseCode.SUCCESS:
      return jsonDecode(response.data.toString());
    default:
      // Handle unexpected status codes (optional)
      // throw an exception or return a default value
      throw Exception(
          'Unexpected response status code: ${response.statusCode}');
  }
}

Future<ResponseListModel> remoteListExecute<T>({
  /// A required `Future<Response>` object representing the network request.
  required Future<Response> request,

  /// A required function that takes a `Map<String, dynamic>` as input and returns a `ResponseModel` object.
  /// This function is used to process successful response data.
  required ResponseListModel Function(Map<String, dynamic> data)
      fromJsonFunction,
}) async {
  /// Declare a variable to hold the final `ResponseModel` object.
  ResponseListModel responseListModel;

  /// Await the execution of the provided `request` future to get the response.
  Response response = await request;

  /// Convert the response data to a String for processing.
  String data = response.data.toString();

  /// Handle successful responses (status code 200)
  if (response.statusCode == ResponseCode.SUCCESS) {
    /// Attempt to decode the response data as a JSON map and pass it to the `onSuccess` function
    /// to create the `ResponseModel` object for successful cases.
    Map<String, dynamic> map = jsonDecode(data);
    try {
      responseListModel = fromJsonFunction(map);
    } catch (error) {
      //the error is from conversion which is done by fromJson method
      responseListModel = ResponseListModel(
        code: response.statusCode.toString(),
        status: false,
        message: "${error.runtimeType}\n$error",
      );
    }
  } else {
    /// Handle unsuccessful responses (status code other than 200)
    try {
      /// Attempt to decode the response data as a JSON map and use it to create a `ResponseModel`
      /// for error cases (based on `ResponseModel.fromJson` constructor).
      responseListModel = ResponseListModel.fromJson(jsonDecode(data));
    } on FormatException {
      /// If JSON decoding fails (e.g., invalid format), create a generic error `ResponseModel`.
      responseListModel = ResponseListModel(
          code: response.statusCode.toString(), message: data, status: false);
    }
  }

  /// Return the constructed `ResponseModel` object.
  return responseListModel;
}

/// This function executes a provided future of type `Either<Failure, R>`
/// and displays appropriate dialogs based on the outcome.
/// `R` is restricted to extend `ResponseModel` for consistent data handling.
Future<R?> executeWithDialog<R>(
    {
    /// A required `Future<Either<Failure, R>>` future representing the asynchronous operation.
    required Future<Either<Failure, ResponseModel>> either,

    /// The message to display in the dialog while the operation is running.
    required String startingMessage,

    /// A function to be called with the error message if the operation fails.
    Function(String message)? onError,

    /// A function to be called with the response data if the operation succeeds.
    required Function(R? data) onSuccess,

    /// An optional function to be called before starting the operation (e.g., for showing a loading indicator).
    Function()? onStart,
    Future<void> Function(dynamic data)? beforeSuccess}) async {
  /// Call the optional `onStart` function if provided.
  onStart?.call();
  R? data;

  /// Show a custom dialog with the `startingMessage` using `AppService.showCustomDialog`.
  AppService().showCustomDialog(isAlert: false, message: startingMessage);

  /// Await the result of the `either` future and handle it using `fold`.
  (await either).fold((Failure failure) async {
    /// Extract the error message from the `Failure` object.
    var message = failure.message;

    /// Show a custom error dialog with a timeout using `AppService.showCustomDialogWithTimer`.
    /// The timeout calls the `onError` function with the error message.
    await AppService().showCustomDialogWithTimer(
      message: message,
      dialogTimingType: DialogTimingTypes.long,
      dialogType: AlertTypes.error,
      onTimeOut: () => onError?.call(message),
    );
  }, (response) async {
    /// Extract the data from the successful response (`R`).
    data = response.data;
    if (beforeSuccess.isNotNull) {
      await beforeSuccess!.call(data);
    }

    /// Show a custom success dialog with a timeout using `AppService.showCustomDialogWithTimer`.
    /// The timeout calls the `onSuccess` function with the data.
    await AppService().showCustomDialogWithTimer(
      message: response.message,
      dialogType: AlertTypes.success,
      onTimeOut: () {
        onSuccess.call(data);
      },
    );
  });
  return data;
}

Future<bool> cacheRemove<T>(
  SharedPreferences sharedPreferences,
  String key,
) async {
  bool isCleared = true;
  if (sharedPreferences.containsKey(key)) {
    isCleared = await sharedPreferences.remove(key);
  }
  return isCleared;
}

/// This function executes a remote operation by performing a network request
/// and handling the response data to create a `ResponseModel` object.
Future<ResponseModel> remoteExecute({
  /// A required `Future<Response>` object representing the network request.
  required Future<Response> request,

  /// A required function that takes a `Map<String, dynamic>` as input and returns a `ResponseModel` object.
  /// This function is used to process successful response data.
  required ResponseModel Function(Map<String, dynamic> data) fromJsonFunction,
}) async {
  /// Declare a variable to hold the final `ResponseModel` object.
  ResponseModel responseModel;

  /// Await the execution of the provided `request` future to get the response.
  Response response = await request;

  /// Convert the response data to a String for processing.
  String data = response.data.toString();

  /// Handle successful responses (status code 200)
  if (response.statusCode == ResponseCode.SUCCESS) {
    /// Attempt to decode the response data as a JSON map and pass it to the `onSuccess` function
    /// to create the `ResponseModel` object for successful cases.
    Map<String, dynamic> map = jsonDecode(data);
    try {
      responseModel = fromJsonFunction(map);
    } catch (error) {
      //the error is from conversion which is done by fromJson method
      responseModel = ResponseModel(
        code: response.statusCode.toString(),
        status: false,
        message: "${error.runtimeType}\n$error",
      );
    }
  } else {
    /// Handle unsuccessful responses (status code other than 200)
    try {
      /// Attempt to decode the response data as a JSON map and use it to create a `ResponseModel`
      /// for error cases (based on `ResponseModel.fromJson` constructor).
      responseModel = ResponseModel.fromJson(jsonDecode(data));
    } on FormatException {
      /// If JSON decoding fails (e.g., invalid format), create a generic error `ResponseModel`.
      responseModel = ResponseModel(
          code: response.statusCode.toString(), message: data, status: false);
    }
  }

  /// Return the constructed `ResponseModel` object.
  return responseModel;
}

Future<ResponseModel> cacheWrite(
    SharedPreferences sharedPreferences, String key, dynamic data,
    {Function(dynamic data)? afterCaching,
    Map<String, dynamic> Function(dynamic data)? toJson}) async {
  bool isCached = false;
  ResponseModel response;
  if (toJson.isNotNull) {
    List<Map<String, dynamic>> list =
        (data as List).map((e) => toJson!(e)).toList();
    isCached = await sharedPreferences.setString(key, list.fromJsonToString);
  } else if (data is Map<String, dynamic>) {
    isCached = await sharedPreferences.setString(key, data.fromJsonToString);
  } else if (data is bool) {
    isCached = await sharedPreferences.setBool(key, data);
  } else if (data is double) {
    isCached = await sharedPreferences.setDouble(key, data);
  } else if (data is int) {
    isCached = await sharedPreferences.setInt(key, data);
  } else if (data is String) {
    isCached = await sharedPreferences.setString(key, data);
  }
  if (isCached.isTrue) {
    if (afterCaching.isNotNull) {
      afterCaching?.call(data);
    }
    response = ResponseModel(
        code: ResponseCode.CACHE_WRITE_SUCCESS.toString(),
        status: true,
        message: ResponseMessage().CACHE_WRITE_SUCCESS.trans,
        data: isCached);
  } else {
    response = ResponseModel(
        code: ResponseCode.CACHE_WRITE_ERROR.toString(),
        message: ResponseMessage().CACHE_WRITE_ERROR.trans,
        status: false,
        data: isCached);
  }

  debugPrint('cached $isCached');
  return response;
}

Future<ResponseModel> cacheRead<T>(
    SharedPreferences sharedPreferences, String key,
    {T Function(Map<String, dynamic>)? fromJson,
    Function(T?)? afterCaching}) async {
  T? saveData;
  ResponseModel responseModel;
  if (sharedPreferences.containsKey(key)) {
    if (fromJson.isNotNull) {
      String? str = sharedPreferences.getString(key);
      if (str.isNotNull) {
        saveData = fromJson!(str.fromStringToJson);
      }
    } else if (T.toString().contains("bool")) {
      saveData = sharedPreferences.getBool(key) as T;
    } else if (T.toString().contains("double")) {
      saveData = sharedPreferences.getDouble(key) as T;
    } else if (T.toString().contains("int")) {
      saveData = sharedPreferences.getInt(key) as T;
    } else if (T.toString().contains("String")) {
      saveData = sharedPreferences.getString(key) as T;
    }

    if (saveData != null) {
      responseModel = ResponseModel(
        code: ResponseCode.CACHE_READ_SUCCESS.toString(),
        status: true,
        message: ResponseMessage().CACHE_READ_SUCCESS.trans,
        data: saveData,
      );
      if (afterCaching.isNotNull) {
        afterCaching!(saveData);
      }
    } else {
      responseModel = ResponseModel(
        code: ResponseCode.CACHE_READ_ERROR.toString(),
        status: false,
        message: ResponseMessage().CACHE_READ_ERROR.trans,
      );
    }
  } else {
    responseModel = ResponseModel(
      code: ResponseCode.NOT_FOUND_IN_CACHE.toString(),
      status: true,
      message: ResponseMessage().NOT_FOUND_IN_CACHE.trans,
    );
    return responseModel;
  }
  return responseModel;
}

Future<Either<Failure, ResponseModel>> executeCache(
  Future<ResponseModel> Function() local,
) async {
  ResponseModel response = await local.call();
  if (response.status.isTrue) {
    return Right(response);
  } else {
    return Left(Failure(int.parse(response.code!), response.message!));
  }
}

Future<T?> managerExecute<T>(Future<Either<Failure, ResponseModel>> either,
    {Function(T? data)? onSuccess,
    Function()? onStart,
    Function(String message)? onFail}) async {
  T? data;
  onStart?.call();
  (await either).fold((Failure failure) {
    if (kDebugMode) {
      print(failure.message);
    }
    onFail?.call(failure.message);
  }, (ResponseModel value) {
    if (kDebugMode) {
      print(value.message);
    }
    if (kDebugMode) {
      print(value.data);
    }

    data = value.data;
    onSuccess?.call(data);
  });
  return data;
}

/// This function executes a provided function and handles the response, returning an `Either<Failure, T>` future.
/// `T` is restricted to extend `ResponseModel`, ensuring the returned data conforms to a specific format.
Future<Either<Failure, ResponseModel>> execute(
  Future<ResponseModel> Function() remote, {
  Future<ResponseModel> Function(dynamic data)? local,
}) async {
  /// Check if an internet connection is available before proceeding with the request.
  if (await checkConnection()) {
    try {
      /// Execute the provided function and await the result (assumed to be a `ResponseModel`).
      ResponseModel value = await remote.call();

      /// Check the status of the response (`ResponseModel.status`).
      if (value.status.isTrue) {
        /// Successful response (status is true). Extract data using `value.data` and return it as `Right(value.data)`.
        if (local.isNotNull) {
          ResponseModel localResponse = await local!.call(value.data);
          if (localResponse.status.isFalse) {
            return Left(Failure(ResponseCode.CACHE_WRITE_ERROR,
                ResponseMessage().CACHE_WRITE_ERROR));
          }
        }
        return Right(value);
      } else {
        /// Unsuccessful response (status is false). Extract error code and message from the response model
        /// and create a `Left` with a `Failure` object containing the extracted information.
        return Left(Failure(value.code!.toInt, value.message!));
      }
    } catch (error) {
      /// Handle any exceptions that might occur during execution.
      /// Delegate error handling to an `ErrorHandler` instance and return the resulting `Left(Failure)`.
      return Left(ErrorHandler().handle(error));
    }
  } else {
    /// No internet connection detected. Return a `Left` with a pre-defined `Failure` for no internet connection.
    return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
  }
}

Future<bool> checkNotificationPermission(
  BuildContext context,
) async {
  permissionManager.setPermissionTypeAndContext(
    context: context,
    type: Permission.notification.value,
    dialog: PermissionDialog(
      title: AppStrings().notifications.trans,
      asset: AppAssets().notificationDialog,
      description: AppStrings().notificationPermission.trans,
    ),
  );
  return await permissionManager.getPermission();
}

Future<bool> checkCameraPermission(
  BuildContext context,
) async {
  permissionManager.setPermissionTypeAndContext(
    context: context,
    type: Permission.camera.value,
    dialog: PermissionDialog(
      title: AppStrings().camera.trans,
      asset: AppAssets().cameraDialog,
      description: AppStrings().cameraPermission.trans,
    ),
  );
  return await permissionManager.getPermission();
}

Future<bool> checkLocationPermission(
  BuildContext context,
) async {
  permissionManager.setPermissionTypeAndContext(
    context: context,
    type: Permission.location.value,
    dialog: PermissionDialog(
      title: AppStrings().location.trans,
      asset: AppAssets().cameraDialog,
      description: AppStrings().locationPermission.trans,
    ),
  );
  return await permissionManager.getPermission();
}

/*Future<bool> checkLocationPermission(BuildContext context) async {
  permissionManager.setPermissionTypeAndContext(
    context: context,
    type: Permission.location.value,
    dialog: PermissionDialog(
      title: AppStrings().location.trans,
      asset: AppAssets().notificationDialog,
      description: AppStrings().notificationPermission.trans,
    ),
  );

  return await permissionManager.getPermission();
}*/

/// This function executes a remote operation by performing a network request
/// and handling the response data to create a `ResponseModel` object.
Future<ResponseModel> googleRemoteExecute({
  /// A required `Future<Response>` object representing the network request.
  required Future<Response> request,

  /// A required function that takes a `Map<String, dynamic>` as input and returns a `ResponseModel` object.
  /// This function is used to process successful response data.
  required ResponseModel Function(Map<String, dynamic> data) fromJsonFunction,
}) async {
  /// Declare a variable to hold the final `ResponseModel` object.
  ResponseModel responseModel;

  /// Await the execution of the provided `request` future to get the response.
  Response response = await request;

  /// Convert the response data to a String for processing.
  String data = response.data.toString();

  /// Handle successful responses (status code 200)
  if (response.statusCode == ResponseCode.SUCCESS) {
    /// Attempt to decode the response data as a JSON map and pass it to the `onSuccess` function
    /// to create the `ResponseModel` object for successful cases.
    Map<String, dynamic> map = jsonDecode(data);
    try {
      responseModel = fromJsonFunction(map);
    } catch (error) {
      //the error is from conversion which is done by fromJson method
      responseModel = ResponseModel(
        code: response.statusCode.toString(),
        status: false,
        message: "${error.runtimeType}\n$error",
      );
    }
  } else {
    /// Handle unsuccessful responses (status code other than 200)
    try {
      /// Attempt to decode the response data as a JSON map and use it to create a `ResponseModel`
      /// for error cases (based on `ResponseModel.fromJson` constructor).
      responseModel = ResponseModel.fromJson(jsonDecode(data));
    } on FormatException {
      /// If JSON decoding fails (e.g., invalid format), create a generic error `ResponseModel`.
      responseModel = ResponseModel(
          code: response.statusCode.toString(), message: data, status: false);
    }
  }

  /// Return the constructed `ResponseModel` object.
  return responseModel;
}

Future<bool> checkLocationPermissionAndDoOperation(BuildContext context,
    {Function()? onSuccess, Function(String)? onFail}) async {
  bool isLocationEnabled = await checkLocationPermission(context);
  if (isLocationEnabled.isTrue) {
    onSuccess?.call();
  } else {
    onFail?.call(AppStrings().locationPermissionFailed.trans);
  }
  return isLocationEnabled;
}

Future showProgressDialog(
  BuildContext context, {
  String? message,
  Widget? child,
  Color? barrierColor,
  Color progressColor = AppColors.white,
  bool dismissible = false,
}) =>
    showDialog(
      context: context,
      barrierColor: barrierColor,
      barrierDismissible: dismissible,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: AppColors.transparent,
          alignment: Alignment.center,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 60,
                  width: 60,
                  child: CircularProgressIndicator(
                    color: progressColor,
                    strokeWidth: 7,
                  )),
            ],
          ),
        );
      },
    );
get hideKeyboard => FocusManager.instance.primaryFocus?.unfocus();
int getDistance(int distance) {
  if (distance > 1000) {
    final kilometerDistance = (distance / 1000.0).roundToDouble().toInt();
    return kilometerDistance;
  } else if (distance > 0) {
    return distance;
  } else {
    return 0;
  }
}

int convertToMinutes(int seconds) {
  // Calculate the number of minutes in the seconds.
  int minutes = seconds ~/ 60;

  // Calculate the remaining seconds.
  int secondsRemaining = seconds % 60;

  // If the remaining seconds are greater than zero, round up the minutes.
  if (secondsRemaining > 0) {
    minutes++;
  }

  // Return the number of minutes.
  return minutes;
}
