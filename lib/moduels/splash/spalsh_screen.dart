import 'dart:async';
import 'package:flutter/material.dart';
import '../../shared/components/component.dart';
import '../on_boarding/on_boarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splashBody(),
    );
  }
}
