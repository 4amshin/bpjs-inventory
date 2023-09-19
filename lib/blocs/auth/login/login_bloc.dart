import 'dart:developer';

import 'package:bpjs_inventory/blocs/auth/login/login_event.dart';
import 'package:bpjs_inventory/blocs/auth/login/login_satate.dart';
import 'package:bpjs_inventory/data/data_sources/remote_data_sources/auth_data_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // final AuthDataSource dataSource;
  LoginBloc(/*this.dataSource*/) : super(LoginInitial()) {
    on<AdminLoginEvent>(_adminLogin);
  }

  Future<void> _adminLogin(
    AdminLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 3));
    log('Login Success: \nUsername: ${event.adminModel.username}\nPassword: ${event.adminModel.password}');

    emit(LoginSuccess(isLogin: true));
    // final result = await dataSource.adminLogin(
    //   username: event.adminModel.username,
    //   password: event.adminModel.name,
    // );
    // result.fold(
    //   (error) => emit(LoginError(message: 'Login Failed')),
    //   (success) => emit(LoginSuccess(isLogin: success)),
    // );
  }

  // Future<void> _adminLogin(
  //   AdminLoginEvent event,
  //   Emitter<LoginState> emit,
  // ) async {
  //   emit(LoginLoading());
  //   final result = await dataSource.adminLogin(
  //     username: event.adminModel.username,
  //     password: event.adminModel.name,
  //   );
  //   result.fold(
  //     (error) => emit(LoginError(message: 'Login Failed')),
  //     (success) => emit(LoginSuccess(isLogin: success)),
  //   );
  // }
}
