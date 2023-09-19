// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final bool isLogin;
  LoginSuccess({
    required this.isLogin,
  });
}

class LoginError extends LoginState {
  final String message;
  LoginError({
    required this.message,
  });
}
