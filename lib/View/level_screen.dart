import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'Styles/app_colors.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      body: levelBody(),
      drawer: drawerMenu(context),
      appBar: AppBar(
          backgroundColor: colorThree,
          iconTheme: const IconThemeData(color: colorOne)),
    );
  }

  levelBody() {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 15,
        ),
        const Center(
            child: Icon(
          Icons.favorite,
          color: colorOne,
          size: 140,
        )),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Nivel',
          style: GoogleFonts.rambla(
              color: colorFour, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 60,
            ),
            Text(
              'Nivel de Parche',
              style: GoogleFonts.rambla(
                  color: colorFour, fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              width: 15,
            ),
            LinearPercentIndicator(
              width: 180.0,
              lineHeight: 15,
              percent: 0.1,
              backgroundColor: Colors.white,
              progressColor: colorFour,
              barRadius: const Radius.circular(25),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          'Insignias',
          style: GoogleFonts.rambla(
              color: colorFour, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2,
          ),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: Container(
                color: colorThree,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.recommend,
                      size: 50,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Título ${index + 1}',
                      style: GoogleFonts.rambla(
                          color: colorFour,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
