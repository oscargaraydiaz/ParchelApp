import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/Truth_or_Dare_Screen.dart';
import 'package:parchelapp/View/Widgets/Drawer_Menu.dart';

import 'Styles/button_style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      appBar: AppBar(
          backgroundColor: colorThree,
          iconTheme: const IconThemeData(color: colorOne)),
      body: mainBody(),
      drawer: drawerMenu(context),
    );
  }

  mainBody() {
    return Container(
      decoration: const BoxDecoration(color: colorThree),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
              child: Container(
                height: 160,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                          color: colorOne, spreadRadius: -20, blurRadius: 20)
                    ],
                    image: DecorationImage(
                        scale: 2.0, image: AssetImage("assets/logo.png"))),
                child: const Image(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/little_devil.png"))),
                  child: const Image(
                    image: AssetImage("assets/little_devil.png"),
                  )),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration:
                          const Duration(milliseconds: 500),
                          reverseTransitionDuration:
                          const Duration(milliseconds: 300),
                          pageBuilder: (context, animation, _) {
                            return FadeTransition(
                              opacity: animation,
                              child: const TruthorDareScreen(),
                            );
                          }));
                },
                style: buttonMainStyle(),
                child: Text(
                  'Responde o Atrévete',
                  style: GoogleFonts.rambla(shadows: [
                    const BoxShadow(
                        color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                  ], color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: buttonMainStyle(),
                child: Text(
                  'Adivina',
                  style: GoogleFonts.rambla(shadows: [
                    const BoxShadow(
                        color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                  ], color: Colors.white, fontSize: 25),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/faces.png"))),
                  child: const Image(
                    image: AssetImage("assets/faces.png"),
                  )),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/monocle.png"))),
                  child: const Image(
                    image: AssetImage("assets/monocle.png"),
                  )),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: buttonMainStyle(),
                child: Text(
                  '¿Quién fue?',
                  style: GoogleFonts.rambla(shadows: [
                    const BoxShadow(
                        color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                  ], color: Colors.white, fontSize: 25),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
