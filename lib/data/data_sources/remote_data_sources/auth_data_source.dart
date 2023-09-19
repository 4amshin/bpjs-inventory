import 'package:bpjs_inventory/data/data_sources/remote_data_sources/firebase_auth_service.dart';
import 'package:dartz/dartz.dart';

class AuthDataSource {
  final FirebaseAuthService authService = FirebaseAuthService();

  Future<Either<String, bool>> adminLogin({
    required String username,
    required String password,
  }) async {
    final isValid = await authService.isAdminLogin(
      username: username,
      password: password,
    );

    if (isValid) {
      return const Right(true);
    } else {
      return const Left('Invalid Admin Username or Password');
    }
  }

  Future<Either<String, bool>> userLogin({
    required String username,
    required String password,
  }) async {
    final isValid = await authService.isUserLogin(
      username: username,
      password: password,
    );

    if (isValid) {
      return const Right(true);
    } else {
      return const Left('Invalid Username or Password');
    }
  }
}
