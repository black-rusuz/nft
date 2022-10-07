import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection.dart';
import 'presentation/home/bloc/home_bloc.dart';
import 'presentation/home/home_page.dart';

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
      home: BlocProvider(
        create: (_) => sl<HomeBloc>(),
        child: const HomePage(),
      ),
      theme: ThemeData(
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
