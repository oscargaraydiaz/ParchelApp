import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/Controller/badges_controller.dart';
import 'package:parchelapp/Controller/user_controller.dart';
import 'package:parchelapp/View/Widgets/drawer_menu.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../Models/user_model.dart';
import 'Styles/app_colors.dart';


class LevelScreen extends StatefulWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  List<User> usersList = UserController.userList;
  int userIndex = UserController.userIndex;

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
              width: 55,
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
              percent: double.parse(usersList[userIndex].level),
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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (usersList[userIndex].level == '0.0')? 1:3,
            childAspectRatio: 1.2,
          ),
          itemCount: usersList[userIndex].level == '0.0' ? 1 : BadgesController.badgesList.length,
          itemBuilder: (BuildContext context, int index) {
            if(usersList[userIndex].level == '0.0'){
              return  Center(
                child: Text('¡Vaya! No has desbloqueado insignias', style: GoogleFonts.rambla(
                    color: colorOne, fontSize: 25, fontWeight: FontWeight.bold
                ),),
              );
            }else{
              return GridTile(
                child: Container(
                  color: colorThree,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: NetworkImage(BadgesController.badgesList[index].logo)),
                      const SizedBox(height: 8),
                      Text(
                        BadgesController.badgesList[index].title,
                        style: GoogleFonts.rambla(
                            color: colorFour,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              );
            }

          },
        ),
      ]),
    );
  }
}
