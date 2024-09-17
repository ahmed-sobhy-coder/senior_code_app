part of 'error_cubit.dart';

@immutable
sealed class ErrorState {}

final class ErrorInitial extends ErrorState {}

final class AddErrorState extends ErrorInitial {}

final class RemoveErrorState extends ErrorInitial {}

final class ClearErrorsState extends ErrorInitial {}
