import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'injection.dart';
import 'presentation/core/styles.dart';
import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/login/login_page.dart';
import 'presentation/pages/people/people_page.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTB NFT',
      routes: routes,
      initialRoute: routes.keys.first,
      theme: theme,
    );
  }

  final Map<String, Widget Function(BuildContext)> routes = {
    LoginPage.name: (_) => BlocProvider(
          create: (_) => sl<LoginBloc>(),
          child: const LoginPage(),
        ),
    HomePage.name: (_) => BlocProvider(
          create: (_) => sl<HomeBloc>(),
          child: const HomePage(),
        ),
    PeoplePage.name: (_) => BlocProvider(
          create: (_) => sl<PeopleBloc>(),
          child: const PeoplePage(),
        ),
  };

  final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Styles.blue,
    scaffoldBackgroundColor: Styles.bg,
    iconTheme: const IconThemeData(color: Styles.icon),
    textTheme: GoogleFonts.ptSansTextTheme().apply(
      bodyColor: Colors.white,
      // displayColor: Colors.red,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      // iconTheme: IconThemeData(color: Colors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Styles.inputBg,
      hoverColor: Styles.inputBg,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: Styles.borderRadius,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: Styles.borderRadius),
        ),
      ),
    ),
  );
}
