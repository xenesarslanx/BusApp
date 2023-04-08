import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bus_app/const/colors.dart';
import 'package:bus_app/view/loginView.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSplashScreen(
        backgroundColor: MyColors.backColor,
        splash: Image.asset('lib/assets/splash.png', 
        fit: BoxFit.contain
        ),
        nextScreen:  const LoginView(),
        splashIconSize: double.infinity,
           // splashTransition: SplashTransition.fadeTransition,
          ),
      ),
    );
  }
}