import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parchelapp/Controller/user_controller.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/splash_screen.dart';
import 'Controller/badges_controller.dart';
import 'Controller/challenge_controller.dart';
import 'Controller/mystery_controller.dart';
import 'Controller/riddle_controller.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value){
    ChallengeController.getHotChallenge();
    ChallengeController.getFriendsChallenge();
    ChallengeController.getFamilyChallenge();
    RiddleController.getRiddle();
    MysteryController.getMystery();
    BadgesController.getBadges();
    UserController.getUsers().then((value) => runApp(const MyApp()));
  });

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Establece los colores personalizados para el Switch
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(Colors.grey),
          thumbColor: MaterialStateProperty.all(colorOne),
        ),
        sliderTheme: const SliderThemeData(
          activeTrackColor: colorOne,
          inactiveTrackColor: Colors.grey,
          thumbColor: colorOne,
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}