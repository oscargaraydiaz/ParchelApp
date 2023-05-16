import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Login_Screen.dart';

import '../Styles/app_colors.dart';

Widget drawerMenu(BuildContext context){
  return Drawer(
    width: 230,
    backgroundColor: colorThree,
    shape: const RoundedRectangleBorder(),
    child: ListView(
      padding: const EdgeInsets.all(0),
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: colorOne,
          ),
          child:  Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: CircleAvatar(maxRadius: 40,
                  backgroundImage: AssetImage("assets/icon.png"),)),
              SizedBox(
                height: 10,
              ),
              ],
          ),
        ),
        Center(
            child:  Text('Nombre...',
                style: GoogleFonts.rambla(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 18))),
        const SizedBox(
          height: 1,
        ),
        Center(
            child:  Text('@nombre',
                style: GoogleFonts.rambla(
                    color: Colors.grey,
                    fontSize: 14
                ))),
        const SizedBox(
          height: 20,
        ),

        ListTile(
          iconColor: Colors.grey,
          title: Text('Nivel', style: GoogleFonts.rambla(
                fontWeight: FontWeight.bold,
                fontSize: 16)),
          leading: const Icon(Icons.favorite),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: Colors.grey,
          onTap: () {

          },
        ),
        const SizedBox(
          height: 3,
        ),
        ListTile(
          iconColor: Colors.grey,
          title: Text('Logros', style: GoogleFonts.rambla(
              fontWeight: FontWeight.bold,
              fontSize: 16)),
          leading: const Icon(Icons.bar_chart),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: Colors.grey,
          onTap: () {

          },
        ),
        const SizedBox(
          height: 3,
        ),
        ListTile(
          iconColor: Colors.grey,
          title: Text('Amigos', style: GoogleFonts.rambla(
              fontWeight: FontWeight.bold,
              fontSize: 16)),
          leading: const Icon(Icons.people),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: Colors.grey,
          onTap: () {

          },
        ),
        const SizedBox(
          height: 3,
        ),
        ListTile(
          //rgb(255, 154, 46)
          iconColor: const Color.fromRGBO(255, 154, 46, 30),
          title: Text('Premium', style: GoogleFonts.rambla(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 16)),
          leading: const Icon(Icons.star),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey,),
          textColor: Colors.white,
          onTap: () {

          },
        ),
        const SizedBox(
          height: 3,
        ),
        ListTile(
          iconColor: Colors.grey,
          title: Text('Compras', style: GoogleFonts.rambla(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 16)),
          leading: const Icon(Icons.shopping_bag),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: Colors.white,
          onTap: () {

          },
        ),
        const SizedBox(
          height: 90,
        ),
        ListTile(
          iconColor: Colors.grey,
          title: Text('Configuración', style: GoogleFonts.rambla(
              fontWeight: FontWeight.bold,
              fontSize: 16)),
          leading: const Icon(Icons.settings),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          textColor: Colors.grey,
          onTap: () {
          },
        ),
        const SizedBox(
          height: 3,
        ),
        ListTile(
          iconColor: Colors.grey,
          title: Text('Cerrar Sesión', style: GoogleFonts.rambla(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 16)),
          leading: const Icon(Icons.logout_outlined),
          textColor: Colors.white,
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                PageRouteBuilder(
                    transitionDuration:
                    const Duration(milliseconds: 500),
                    reverseTransitionDuration:
                    const Duration(milliseconds: 300),
                    pageBuilder: (context, animation, _) {
                      return FadeTransition(
                        opacity: animation,
                        child: const LoginScreen(),
                      );
                    }), (route) => false);
          },
        ),
      ],
    ),
  );

}