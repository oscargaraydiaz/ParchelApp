import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool sound,music;

  @override
  void initState() {
    super.initState();
    sound = true;
    music = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      drawer: drawerMenu(context),
      appBar: AppBar(
        backgroundColor: colorThree,
        iconTheme: const IconThemeData(color: colorOne),
      ),
      body: _settingsBody(),
    );
  }

  _settingsBody() {
    return SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Icon(
                    Icons.settings, color: Colors.grey, size: 140,)
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Configuración', style: GoogleFonts.rambla(
            color: colorFour, fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 60,),
                Text('Sonidos', style: GoogleFonts.rambla(color: colorFour, fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(width: 90,),
                Switch(
                  value: sound,
                  onChanged: (value){
                  setState(() {
                    sound = !sound;
                  });
                },
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 60,),
                Text('Música', style: GoogleFonts.rambla(color: colorFour, fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(width: 100,),
                Switch(value: music, onChanged: (value){
                  setState(() {
                    music = !music;
                  });
                },
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(width: 30,),
                Text(
                  'Volumen Música',
                  style: GoogleFonts.rambla(color: colorFour, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Slider(
                  value: 0.5,
                  min: 0.0,
                  max: 1.0,
                  onChanged: (value) {
                    // Lógica para ajustar el volumen de la música
                  },
                ),
              ],
            )

          ],
        ),
      ),
    ])
    );
  }
}

