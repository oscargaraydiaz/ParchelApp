import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:parchelapp/Models/user_model.dart';
import 'package:parchelapp/View/Widgets/snack_bar.dart';

class UserController{
  static final List<User> userList = [];
  static late int userIndex;

  static Future<List<User>> getUsers() async {
    CollectionReference userRef = FirebaseFirestore.instance.collection(
        'users');

    QuerySnapshot users = await userRef.get();

    for (var element in users.docs) {
      String email = element.get('email').toString();
      String password = element.get('password').toString();
      String username = element.get('username').toString();
      String name = element.get('name').toString();
      String date = element.get('date').toString();
      String cellphone = element.get('cellphone').toString();
      String level = element.get('level').toString();
      String thisWeekYield = element.get('thisWeekYield').toString();
      String lWeekYield = element.get('lWeekYield').toString();
      String monthYield = element.get('monthYield').toString();
      String weekTime = element.get('weekTime').toString();
      String thisWeekTime = element.get('thisWeekTime').toString();
      String monthTime = element.get('monthTime').toString();
      String rate = element.get('rate').toString();
      String premium = element.get('premium').toString();

      User user = User(email, password, username, date, cellphone, name, level, thisWeekYield, lWeekYield, monthYield, weekTime, thisWeekTime, monthTime, rate, premium);

      userList.add(user);
    }

    return userList;
  }

  static Future<void> signUpUser(BuildContext context, String email, String password, String username, String date, String cellphone, String name, String level, String thisWeekYield, String lWeekYield, String monthYield, String weekTime, String thisWeekTime, String monthTime, String rate, String premium)async {
    try{
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      await firestore.collection('users').add({
        'email': email,
        'username': username,
        'name': name,
        'password': password,
        'date': date,
        'cellphone': cellphone,
        'level': level,
        'lWeekYield': lWeekYield,
        'thisWeekYield': thisWeekYield,
        'monthYield': monthYield,
        'weekTime': weekTime,
        'thisWeekTime': thisWeekTime,
        'monthTime': monthTime,
        'rate': rate,
        'premium': premium
      });

    }catch(e){
      snackbar(context, e.toString());
    }
  }

  static Future<int> signIn(BuildContext context, String email, String password) async{
    bool login = false;
    late User tempuser;
    for (var user in userList) {

      if(email.trim() == user.email.trim() && password.trim() == user.password.trim()){
          login = true;
          tempuser = user;
      }

    }
    if(login){
      userIndex = userList.indexOf(tempuser);
    }else{
      snackbar(context, 'Correo y/o Contraseña Incorrectos');
    }

    return userIndex;
  }


}
