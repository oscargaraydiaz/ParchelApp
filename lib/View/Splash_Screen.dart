import 'package:flutter/material.dart';
import 'package:parchelapp/View/Login_Screen.dart';
import 'Styles/app_colors.dart';

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
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.push(
          context,
        PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            reverseTransitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, _){
              return FadeTransition(
                opacity: animation,
                child: const LoginScreen(),
              );
            }),
      );
  });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colorTwo,
        body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/gif_splash.gif')),
                  SizedBox(
                    height: 9,
                  ),
                ],
              ),
            ));
  }
}