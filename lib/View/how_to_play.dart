import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      appBar: AppBar(
        backgroundColor: colorThree,
      ),
      body: _termsBody(context),
    );
  }

  _termsBody(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '¿Cómo Jugar?',
              style: GoogleFonts.rambla(
                color: colorFour,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text('ParchelApp', style: GoogleFonts.rambla(
              color: colorFour,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
          ),
          const SizedBox(height: 20),
          Text(
              '1. Verdad o Reto',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )
          ),
          Text(
            'a. Familia: Espacio diseñado para que te diviertas con tu familia, con preguntas y retos especialmente creados para aumentar la diversión. Tú y los tuyos deciden el orden en que se atreverán con alguno de nuestros retos o responder una pregunta. Entre todos pueden elegir la penitencia para el que falle.',
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'b. Amigos: ¿Estás con tus panas y no saben que hacer? ¿Quieren jugar y tomar? Aquí encontrarán todo tipo de retos y preguntas para divertirte. Quien no responda o no cumpla el reto y en la pantalla no ves el castigo, el castigo siempre será tomar 1 shot.',
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'c. Picante: ¿Quieren subir el parche a otro nivel? ¿Todos están dispuestos a pasar la raya? Pues aquí encontrarán todo tipo de retos y preguntas subidos de tono. Quien no responda o cumpla el reto y en la pantalla no ves el castigo, el castigo siempre será tomar 1 shot. Recuerda preguntar si todos están dispuestos.',
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
              '2. Adivinanzas',
              style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
            "a. Lugar diseñado para parches tranquis, donde la idea es que participen todos y resuelvan las diferentes adivinanzas que tenemos para resolver.",
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            "b. Este espacio está diseñado para cualquier tipo de parche, ya sea familiar o un parche de amigos.",
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
              '3. Misterios',
              style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
            "a. Lugar diseñado para parches tranquis, donde la idea es que participen todos y resuelvan los diferentes misterios que tenemos para resolver.",
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            "b. Este espacio está diseñado para cualquier tipo de parche, ya sea familiar o un parche de amigos.",
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
              'Gracias por descargar ParchelApp',
              style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
            'No se imaginan la emoción tan berraca que tenemos, esperamos que la pasen muy chimba usando esta aplicación tan brutal ¡hecha para todos!',
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
