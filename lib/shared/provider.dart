// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bpjs_inventory/blocs/auth/login/login_bloc.dart';
import 'package:bpjs_inventory/data/data_sources/remote_data_sources/auth_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocProvider extends StatelessWidget {
  final Widget child;
  const SimpleBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => LoginBloc(AuthDataSource()),
          create: (context) => LoginBloc(),
        ),
      ],
      child: child,
    );
  }
}
