import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/privacity_screen.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

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
              'Términos y Condiciones',
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
            '1. Uso de la Aplicación',
            style: GoogleFonts.rambla(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )
          ),
          Text(
            'a. Nuestra aplicación de juegos está diseñada para proporcionar entretenimiento y diversión a usuarios mayores de edad. Al utilizar la aplicación, declaras que tienes al menos 18 años de edad.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'b. Al utilizar nuestra aplicación, aceptas ser responsable de cualquier actividad realizada en tu cuenta y garantizas que la información proporcionada es precisa y actualizada.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'c. No está permitido utilizar nuestra aplicación con fines ilegales, difamatorios, obscenos, ofensivos o que infrinjan los derechos de terceros.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'd. Nos reservamos el derecho de suspender o cancelar tu acceso a la aplicación en caso de incumplimiento de estos términos y condiciones.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
            '2. Contenido y Juegos',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
          Text(
            "a. Nuestra aplicación de juegos ofrece una variedad de juegos y retos para amigos, familia y parejas. Estos juegos pueden variar en su nivel de intensidad, desde juegos tranquilos hasta juegos atrevidos. Te recomendamos utilizar la aplicación de manera responsable y respetuosa, eligiendo los juegos que se ajusten a tus preferencias y los límites de las personas involucradas.",
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'b. Al utilizar los juegos y retos de nuestra aplicación, aceptas que eres responsable de cualquier consecuencia derivada de tu participación en ellos. Recuerda considerar la privacidad, los sentimientos y los límites de los demás participantes.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'c. Algunos juegos o retos pueden contener contenido adulto o contenido que no sea adecuado para ciertos grupos de edad. Es tu responsabilidad asegurarte de que los juegos sean apropiados para ti y los participantes antes de utilizarlos.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
            '3. Privacidad y Protección de Datos',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
          Text(
            'a. Respetamos tu privacidad y nos comprometemos a proteger tus datos personales de acuerdo con nuestra Política de Privacidad. Al utilizar nuestra aplicación, aceptas el uso de tus datos de acuerdo con nuestra Política de Privacidad.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          GestureDetector(
            onTap: (){
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
                          child: const PrivacityScreen(),
                        );
                      }));
            },
            child: Text(
              'b. Puedes encontrar información detallada sobre la recopilación, el uso y la protección de tus datos personales en nuestra Política de Privacidad.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                  decoration: TextDecoration.underline
                ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '4. Propiedad Intelectual',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
          Text(
            'a. Todos los derechos de propiedad intelectual relacionados con la aplicación, incluidos los juegos, el diseño, los gráficos, el software y cualquier contenido proporcionado, son propiedad nuestra o de nuestros licenciantes.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'b. No está permitido copiar, reproducir, modificar, distribuir o utilizar de ninguna otra manera el contenido de la aplicación sin nuestro consentimiento previo por escrito.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
            '5. Limitación de Responsabilidad',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
          Text(
            'a. No ofrecemos garantías ni asumimos responsabilidad por cualquier daño o perjuicio derivado del uso de nuestra aplicación o de la participación en los juegos y retos propuestos. Utilizas la aplicación bajo tu propio riesgo.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          Text(
            'b. No nos responsabilizamos por cualquier pérdida de datos, interrupción del servicio o cualquier otro problema técnico que pueda surgir al utilizar nuestra aplicación.',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 14,
              ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          Text(
            '6. Modificaciones de los Términos y Condiciones',
              style: GoogleFonts.rambla(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
          Text(
            'Nos reservamos el derecho de modificar o actualizar estos términos y condiciones en cualquier momento. Te recomendamos revisar periódicamente esta sección para estar al tanto de cualquier cambio.',
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
