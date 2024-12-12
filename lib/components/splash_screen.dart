
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen/home_screen_desktop.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
        duration: 5000,
        splash: const Center(
          child: Text(
            'Fariza',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
        ),
        nextScreen: const HomeScreenDesktop(),
        splashTransition: SplashTransition.fadeTransition,
        centered: true,
        backgroundColor: Colors.black,
      );
    
  }
}
