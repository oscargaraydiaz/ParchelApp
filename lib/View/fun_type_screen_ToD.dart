import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/friends_screen.dart';
import 'package:parchelapp/View/hot_screen.dart';
import 'Styles/app_colors.dart';
import 'Styles/button_style.dart';
import 'Widgets/drawer_menu.dart';
import 'family_screen.dart';

class FunTypeToDScreen extends StatefulWidget {
  const  FunTypeToDScreen({Key? key}) : super(key: key);

  @override
  State< FunTypeToDScreen> createState() => _FunTypeToDScreenState();
}

class _FunTypeToDScreenState extends State< FunTypeToDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      appBar: AppBar(
          backgroundColor: colorThree,
          iconTheme: const IconThemeData(color: colorOne)),
      body: funTypeBody(),
      drawer: drawerMenu(context),
    );
  }

  funTypeBody() {
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
                          image: AssetImage("assets/family.png"))),
                  child: const Image(
                    image: AssetImage("assets/family.png"),
                  )),
              const SizedBox(
                width: 30,
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
                              child: const FamilyScreen(),
                            );
                          }));
                },
                style: buttonMainStyle(),
                child: Text(
                  'Familiar',
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
                              child: const FriendsScreen(),
                            );
                          }));
                },
                style: buttonMainStyle(),
                child: Text(
                  'Amigos',
                  style: GoogleFonts.rambla(shadows: [
                    const BoxShadow(
                        color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                  ], color: Colors.white, fontSize: 25),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/beers.png"))),
                  child: const Image(
                    image: AssetImage("assets/beers.png"),
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
                          image: AssetImage("assets/heart.png"))),
                  child: const Image(
                    image: AssetImage("assets/heart.png"),
                  )),
              const SizedBox(
                width: 50,
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
                              child: const HotScreen(),
                            );
                          }));
                },
                style: buttonMainStyle(),
                child: Text(
                  'Picante',
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
