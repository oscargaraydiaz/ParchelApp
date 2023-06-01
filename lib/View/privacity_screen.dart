import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';

class PrivacityScreen extends StatelessWidget {
  const PrivacityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      appBar: AppBar(
        backgroundColor: colorThree,
      ),
      body: _privacityBody(),
    );
  }

  _privacityBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Políticas de Privacidad',
                  style: GoogleFonts.rambla(
                    color: colorFour,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  )
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '1. Recopilación de Datos',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
            ),
            Text(
              'a. La aplicación puede recopilar información personal limitada, como nombre de usuario y dirección de correo electrónico, para crear una cuenta de usuario. Esta información se utiliza únicamente para personalizar la experiencia del usuario y brindar soporte.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            Text(
              'b. La aplicación también puede recopilar datos de uso, como acciones realizadas dentro de la aplicación, preferencias de configuración y estadísticas anónimas. Estos datos se utilizaron para mejorar la calidad de la aplicación y ofrecer funciones y contenido relevantes.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Text(
              '2. Uso de Datos',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
            ),
            Text(
              'a. Los datos personales recopilados se utilizan para identificar al usuario dentro de la aplicación y proporcionar una experiencia personalizada.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            Text(
              'b. Los datos de uso recopilados se utilizan para analizar el rendimiento de la aplicación, identificar problemas y mejorar la funcionalidad y el contenido.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Text(
              '3. Compartir Datos',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
            ),
            Text(
              'a. La aplicación no compartirá información personal con terceros sin el consentimiento explícito del usuario, a menos que sea requerido por ley o en cumplimiento de un proceso legal.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
            ),
            Text(
              'b. Los datos de uso pueden ser compartidos de forma anónima con terceros para fines de análisis y mejora de la aplicación.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Text(
              '4. Seguridad de los Datos',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
            ),
            Text(
              'a. Se implementan medidas de seguridad razonables para proteger los datos recopilados y evitar el acceso no autorizado.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            Text(
              'b. Se almacenan datos personales solo durante el tiempo necesario para cumplir con los fines para los que se recopilaron.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Text(
              '5. Cambios en la Política de Privacidad',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
            ),
            Text(
              'a. Nos reservamos el derecho de actualizar o modificar esta política de privacidad en cualquier momento. Se recomienda revisar periódicamente esta página para estar al tanto de los cambios.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Text(
              '6. Contacto',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
            ),
            Text(
              'a. Si tienes alguna pregunta o inquietud sobre esta política de privacidad, no dudes en contactarnos a través de los canales proporcionados en la aplicación.',
                style: GoogleFonts.rambla(
                  color: Colors.white,
                  fontSize: 14,
                ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
