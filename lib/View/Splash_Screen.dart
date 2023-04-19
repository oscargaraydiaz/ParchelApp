import 'package:flutter/material.dart';
import 'package:parchelapp/View/Login_Screen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _closeSplash(context);
    super.initState();
  }

  Future<void> _closeSplash(context) async {
    Future.delayed(const Duration(seconds: 6), () async {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
              (route) => false
      );
  });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
        body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/gif_splash.gif')),
                  SizedBox(
                    height: 20,
                  ),

                ],
              ),
            ));
  }
}