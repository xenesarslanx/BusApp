import 'package:bus_app/view/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashView(),
      ),
    ),
  );
}
