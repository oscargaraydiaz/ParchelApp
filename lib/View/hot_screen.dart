import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/Controller/challenge_controller.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';
import 'Widgets/snack_bar.dart';

class HotScreen extends StatefulWidget {
  const HotScreen({Key? key}) : super(key: key);
  @override
  State<HotScreen> createState() => _HotScreenState();
}

class _HotScreenState extends State<HotScreen> {
  late String currentChallenge;

  @override
  void initState() {
    nextChallenge();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      appBar: AppBar(
        backgroundColor: colorThree,
        iconTheme: const IconThemeData(color: colorOne),
      ),
      drawer: drawerMenu(context),
      body: _familyBody(),
    );
  }

  void nextChallenge(){
    int index = Random().nextInt(ChallengeController.hotList.length);
    setState(() {
      currentChallenge = ChallengeController.hotList[index].content;
    });
  }

  _familyBody() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
                child: Container(
                  height: 110,
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
              Column(
                children: [
                  Center(
                    child: Text(
                      '¡Picante!',
                      style: GoogleFonts.justAnotherHand(shadows: [
                        const BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.0,
                            blurRadius: 10)
                      ], color: Colors.white, fontSize: 60),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 40),
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      scale: 2.0, image: AssetImage("assets/Note_1.png"))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(currentChallenge,
                    style: GoogleFonts.rambla(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 70,
              ),
              Column(
                children: [
                  Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                          color: colorOne,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(onPressed: (){
                        snackbar(context, 'Que lástima...');
                        nextChallenge();
                      }, icon: const Icon(Icons.close, color: Colors.white, size: 50,))
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text('Fallado', style: GoogleFonts.rambla(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              Column(
                children: [
                  Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                          color: colorOne,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: IconButton(onPressed: (){
                        snackbar(context, '¡Genial!');
                        nextChallenge();
                      }, icon: const Icon(Icons.check, color: Colors.white, size: 50,)
                      )
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text('Hecho', style: GoogleFonts.rambla(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
