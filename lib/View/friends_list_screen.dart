import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';
import 'Widgets/drawer_menu.dart';

class FriendsListScreen extends StatefulWidget {
  const FriendsListScreen({Key? key}) : super(key: key);

  @override
  State<FriendsListScreen> createState() => _FriendsListScreenState();
}

class _FriendsListScreenState extends State<FriendsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerMenu(context),
      backgroundColor: colorThree,
      appBar: AppBar(
          backgroundColor: colorThree,
          iconTheme: const IconThemeData(color: colorOne)),
      body: friendsBody(),
    );
  }

  friendsBody() {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
          child: Icon(
            Icons.people,
            color: colorOne,
            size: 110,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        Center(
          child: Text(
            'Amigos',
            style: GoogleFonts.rambla(
                color: colorFour, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            children: [
              _buildRow('¡Ups! Seguimos trabajando para agregar funciones'),
            ],
          ),
        ),
      ],
    );
  }

  _buildRow(String name) {
    return ListTile(
      onTap: () {},
      title: Text(
        name,
        style: GoogleFonts.rambla(
            color: colorOne, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      leading: const Icon(
        Icons.supervised_user_circle_rounded,
        color: colorOne,
        size: 40,
      ),
    );
  }
}
