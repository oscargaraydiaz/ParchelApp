import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    Firebase.initializeApp;
    runApp(const MyApp());
  }on FirebaseException catch(e){
    print("Mensaje ${e.message}");
    print("Código ${e.code}");
  }
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