import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'Styles/app_colors.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: achievementsBody(),
      backgroundColor: colorThree,
      drawer: drawerMenu(context),
      appBar: AppBar(
          backgroundColor: colorThree,
          iconTheme: const IconThemeData(color: colorOne)),
    );
  }

  achievementsBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 50,
              child: Text(
                'Logros',
                style: GoogleFonts.rambla(
                    color: colorFour,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Rendimiento',
                  style: GoogleFonts.rambla(
                      color: colorOne,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 14,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text('Esta semana',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(
                  width: 15,
                ),
                Text('Última semana',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(
                  width: 22,
                ),
                Text('Último mes',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 5,
                    progressColor: Colors.greenAccent,
                    center: const Text(
                      '64%',
                      style: TextStyle(color: Colors.greenAccent, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.64,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 5,
                    progressColor: Colors.red,
                    center: const Text(
                      '40%',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.4,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 5,
                    progressColor: Colors.purple,
                    center: const Text(
                      '90%',
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.9,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Tiempo Jugado',
                  style: GoogleFonts.rambla(
                      color: colorOne,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text('Esta semana',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(
                  width: 15,
                ),
                Text('Última semana',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(
                  width: 20,
                ),
                Text('Último mes',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 5,
                    progressColor: Colors.greenAccent,
                    center: const Text(
                      '64%',
                      style: TextStyle(color: Colors.greenAccent, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.64,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 5,
                    progressColor: Colors.red,
                    center: const Text(
                      '40%',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.4,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 5,
                    progressColor: Colors.purple,
                    center: const Text(
                      '90%',
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: 0.9,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
