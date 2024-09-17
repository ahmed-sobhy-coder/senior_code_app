// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../exports.dart';

part 'error_state.dart';

enum Errors {
  PHONE_ERROR,
  NAME_ERROR,
  PASSWORD_ERROR,
  EMAIL_ERROR,
  OTP_ERROR,
  CONFIRM_PASSWORD_ERROR,
  NONE,
}

Map<Errors, String> getError = {
  Errors.PHONE_ERROR: AppStrings().phoneError,
  Errors.NAME_ERROR: AppStrings().nameError,
  Errors.EMAIL_ERROR: AppStrings().emailError,
  Errors.PASSWORD_ERROR: AppStrings().passwordError,
  Errors.OTP_ERROR: AppStrings().otpCodeError,
  Errors.CONFIRM_PASSWORD_ERROR: AppStrings().confirmPasswordError
};

class ErrorCubit extends Cubit<ErrorState> {
  ErrorCubit() : super(ErrorInitial());
  List<Errors> errors = [];
  addValidatorError(Errors error) {
    if (errors.contains(error).isFalse) {
      if (kDebugMode) {
        print("added error $error");
      }
      errors.add(error);
      emit(AddErrorState());
    }
  }

  removeError(Errors error) {
    if (errors.contains(error).isTrue) {
      if (kDebugMode) {
        print("error removed");
      }
      errors.remove(error);

      emit(RemoveErrorState());
    }
  }

  get clearErrors {
    errors.clear();
    emit(ClearErrorsState());
  }
}
