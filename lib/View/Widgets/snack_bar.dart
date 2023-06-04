import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/View/Styles/app_colors.dart';

snackbar (BuildContext context, String text){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text, style: GoogleFonts.justAnotherHand(color: colorOne,fontSize: 30),textAlign: TextAlign.center,),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        duration: const Duration(milliseconds: 2000),
        behavior: SnackBarBehavior.floating,
      )
  );
}