import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection.dart';
import 'presentation/pages/home/bloc/home_bloc.dart';
import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/login/bloc/login_bloc.dart';
import 'presentation/pages/login/login_page.dart';

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
      initialRoute: routes.keys.first,
      routes: routes,
      home: BlocProvider(
        create: (_) => sl<HomeBloc>(),
        child: const LoginPage(),
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        // appBarTheme: const AppBarTheme(
        //   color: Colors.transparent,
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        // iconTheme: const IconThemeData(color: Colors.black),
        // textTheme: GoogleFonts.ptSansTextTheme(),
      ),
    );
  }
}
