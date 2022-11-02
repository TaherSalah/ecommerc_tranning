import 'package:ecommerc/moduels/splash/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
            disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor('E2E2E2'))),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: HexColor('E2E2E2'))),)
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}


