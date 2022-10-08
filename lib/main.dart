import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'injection.dart';
import 'presentation/pages/home/bloc/home_bloc.dart';
import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/login/bloc/login_bloc.dart';
import 'presentation/pages/login/login_page.dart';
import 'presentation/styles.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<String, Widget Function(BuildContext)> routes = {
    LoginPage.name: (_) => BlocProvider(
          create: (_) => sl<LoginBloc>(),
          child: const LoginPage(),
        ),
    HomePage.name: (_) => BlocProvider(
          create: (_) => sl<HomeBloc>(),
          child: const HomePage(),
        ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTB NFT',
      routes: routes,
      initialRoute: routes.keys.first,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Styles.bg,
        textTheme: GoogleFonts.ptSansTextTheme(),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          // iconTheme: IconThemeData(color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Styles.cardBorder,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: Styles.borderRadius,
          ),
        ),
        // iconTheme: const IconThemeData(color: Colors.black),
      ),
    );
  }
}
