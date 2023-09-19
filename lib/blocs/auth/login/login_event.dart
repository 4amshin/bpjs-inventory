// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bpjs_inventory/data/models/login_model/admin_model.dart';

abstract class LoginEvent {}

class AdminLoginEvent extends LoginEvent {
  final AdminModel adminModel;
  AdminLoginEvent({
    required this.adminModel,
  });
}

class UserLoginEvent extends LoginEvent {}
