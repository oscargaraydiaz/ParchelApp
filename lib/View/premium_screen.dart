import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      drawer: drawerMenu(context),
      appBar: AppBar(
        backgroundColor: colorThree,
        iconTheme: const IconThemeData(color: colorOne),
      ),
      body: _premiumBody(),
    );
  }

  _premiumBody() {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
              child: Container(
                height: 140,
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
                    'ParchelApp',
                    style: GoogleFonts.justAnotherHand(shadows: [
                      const BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.0,
                          blurRadius: 10)
                    ], color: colorOne, fontSize: 60),
                  ),
                ),
                Center(
                  child: Text(
                    'Premium',
                    style: GoogleFonts.justAnotherHand(shadows: [
                      const BoxShadow(
                          color: Colors.black,
                          spreadRadius: 0.0,
                          blurRadius: 10)
                    ], color: colorOne, fontSize: 60),
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          children: [
            const SizedBox(
              height: 20,
              width: 30,
            ),
            Center(
              child: Text(
                'Suscripciones Premium',
                style: GoogleFonts.justAnotherHand(shadows: [
                  const BoxShadow(
                      color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                ], color: colorFour, fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const SizedBox(
              child: Image(
                image: AssetImage('assets/stars.png'),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Center(
          child: Text(
            '     Actualiza y disfruta ParchelApp sin anuncios.\nAdemás, obtendrás niveles más divertidos y explícitos',
            style: GoogleFonts.justAnotherHand(shadows: [
              const BoxShadow(
                  color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
            ], color: colorOne, fontSize: 30),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Text(
              'Plan Relax:   \$5',
              style: GoogleFonts.rambla(
                  color: colorFour, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 40,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorFour,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: Text(
                  'Pagar',
                  style: GoogleFonts.rambla(color: Colors.white, fontSize: 18),
                ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Text(
              'Plan Sin Es3:   \$6',
              style: GoogleFonts.rambla(
                  color: colorFour, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 28,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorFour,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: Text(
                  'Pagar',
                  style: GoogleFonts.rambla(color: Colors.white, fontSize: 18),
                )),
          ],
        ),
        const SizedBox(
          height: 200,
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
    );
  }
}
