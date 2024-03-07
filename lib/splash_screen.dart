import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    Timer(const Duration(seconds: 3), () {
      // Replace '/home' with the actual route name of your home screen
      Navigator.pushReplacementNamed(context, '/home');
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      // Replace '/home' with the actual route name of your home screen
      Navigator.pushReplacementNamed(context, 'arun/lib/list_view.dart');
    });

    

    return const Scaffold(
      backgroundColor: Color(0xFF38B349),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/Food_delivery_man_riding_motorcycles_cartoon_art_illustration-ai.png'),
        ),
      ),
    );
    
  }
}
