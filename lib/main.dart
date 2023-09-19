import 'package:bpjs_inventory/blocs/auth/login/login_bloc.dart';
import 'package:bpjs_inventory/blocs/auth/login/login_satate.dart';
import 'package:bpjs_inventory/firebase_options.dart';
import 'package:bpjs_inventory/presentation/admin/home/view/home_view.dart';
import 'package:bpjs_inventory/presentation/admin/main_navigation/view/main_navigation_view.dart';
import 'package:bpjs_inventory/presentation/auth/login/view/login_view.dart';
import 'package:bpjs_inventory/shared/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBlocProvider(
      child: MaterialApp(
        title: 'BPJS INVENTORY',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
        ),
        home: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is LoginSuccess) {
              return const MainNavigationView();
            }
            if (state is LoginError) {
              return const Center(child: Text('Error'));
            }
            return const LoginView();
          },
        ),
      ),
    );
  }
}
