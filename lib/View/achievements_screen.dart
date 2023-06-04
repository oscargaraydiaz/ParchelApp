import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/Controller/user_controller.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../Models/user_model.dart';
import 'Styles/app_colors.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  List<User> usersList = UserController.userList;
  int userIndex = UserController.userIndex;
  String yield1 = '';
  String yield2 = '';
  String yield3 = '';
  String time1 = '';
  String time2 = '';
  String time3 = '';

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
    yield1 = (double.parse(usersList[userIndex].thisWeekYield) * 100).toString();
    yield2 = (double.parse(usersList[userIndex].lWeekYield) * 100).toString();
    yield3 = (double.parse(usersList[userIndex].monthYield) * 100).toString();
    time1 = (double.parse(usersList[userIndex].thisWeekTime) * 100).toString();
    time2 = (double.parse(usersList[userIndex].weekTime) * 100).toString();
    time3 = (double.parse(usersList[userIndex].monthTime) * 100).toString();



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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text('Esta semana',
                    style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 17)),
                const SizedBox(
                  width: 15,
                ),
                Text('Última semana',
                    style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 17)),
                const SizedBox(
                  width: 22,
                ),
                Text('Último mes',
                    style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 18)),
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
                    lineWidth: 7,
                    progressColor: Colors.greenAccent,
                    center: Text(
                      '$yield1%',
                      style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: double.parse(usersList[userIndex].thisWeekYield),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 7,
                    progressColor: Colors.red,
                    center: Text(
                      '$yield2%',
                      style: GoogleFonts.rambla(color: Colors.red, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: double.parse(usersList[userIndex].lWeekYield),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 7,
                    progressColor: Colors.purple,
                    center: Text(
                      '$yield3%',
                      style: GoogleFonts.rambla(color: Colors.purple, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: double.parse(usersList[userIndex].monthYield),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text('Esta semana',
                    style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 17)),
                const SizedBox(
                  width: 15,
                ),
                Text('Última semana',
                    style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 17)),
                const SizedBox(
                  width: 20,
                ),
                Text('Último mes',
                    style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 17)),
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
                    lineWidth: 7,
                    progressColor: Colors.greenAccent,
                    center: Text(
                      '$time1%',
                      style: GoogleFonts.rambla(color: Colors.greenAccent, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: double.parse(usersList[userIndex].thisWeekTime),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 7,
                    progressColor: Colors.red,
                    center: Text(
                      '$time2%',
                      style: GoogleFonts.rambla(color: Colors.red, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: double.parse(usersList[userIndex].weekTime),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircularPercentIndicator(
                    radius: 45,
                    lineWidth: 7,
                    progressColor: Colors.purple,
                    center: Text(
                      '$time3%',
                      style: GoogleFonts.rambla(color: Colors.purple, fontSize: 18),
                    ),
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: double.parse(usersList[userIndex].monthTime),
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
