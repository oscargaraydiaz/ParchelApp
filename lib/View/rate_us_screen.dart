import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';


class RateScreen extends StatefulWidget {
  const RateScreen({Key? key}) : super(key: key);

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
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
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
              child: Container(
                height: 180,
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
          Center(
            child: Text('¿Qué te ha parecido ParchelApp?', style: GoogleFonts.justAnotherHand(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50
            ),),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text('¡Califícanos!', style: GoogleFonts.justAnotherHand(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50
            ),),
          ),
          const SizedBox(
            height: 35,
          ),
      RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
        },
      ),
          const SizedBox(
            height: 160,
          ),
          Center(
            child: Text(
              '¡El exceso de diversión es\n  saludable para el alma!',
              style: GoogleFonts.justAnotherHand(shadows: [
                const BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.0,
                    blurRadius: 10)
              ], color: colorOne, fontSize: 40),
            ),
          ),

        ],
      ),
    );
  }
}
