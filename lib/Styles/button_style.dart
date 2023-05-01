import 'package:flutter/material.dart';
import 'app_colors.dart';

ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
      backgroundColor: colorOne,
      minimumSize: const Size(400, 50),
      shadowColor: Colors.orange,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15))
  );
}
