import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

InputDecoration inputDecoration(String text){
  return InputDecoration(
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white,
              style: BorderStyle.solid)),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white,
              style: BorderStyle.solid)),
      labelText: text,
      labelStyle: GoogleFonts.rambla(
          color: Colors.red, fontSize: 20)
  );
}