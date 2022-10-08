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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VTB NFT',
      onGenerateRoute: routeByName,
      //initialRoute: LoginPage.name,
      initialRoute: HomePage.name,
      theme: theme,
    );
  }

  NoAnimationMaterialPageRoute router(Widget child) =>
      NoAnimationMaterialPageRoute(builder: (_) => child);

  NoAnimationMaterialPageRoute? routeByName(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.name:
        return router(
          BlocProvider(
            create: (_) => sl<LoginBloc>(),
            child: const LoginPage(),
          ),
        );
      case HomePage.name:
        return router(
          BlocProvider(
            create: (_) => sl<HomeBloc>()..add(HomeInit()),
            child: const HomePage(),
          ),
        );
      case PeoplePage.name:
        return router(
          BlocProvider(
            create: (_) => sl<PeopleBloc>(),
            child: const PeoplePage(),
          ),
        );
    }
    return null;
  }

  ThemeData get theme => ThemeData(
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

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required super.builder,
    super.settings,
    super.maintainState,
    super.fullscreenDialog,
  });

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
