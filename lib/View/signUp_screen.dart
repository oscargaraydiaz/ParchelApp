import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/Controller/user_controller.dart';
import 'package:parchelapp/Controller/validators_controller.dart';
import 'package:parchelapp/View/Widgets/snack_bar.dart';
import 'package:parchelapp/View/terms&conditions_screen.dart';
import 'Login_Screen.dart';
import 'Styles/app_colors.dart';
import 'Styles/button_style.dart';
import 'Styles/input_decoration.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late bool _isChecked;
  late bool _obscureText;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cellPhoneController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _isChecked = false;
    _obscureText = true;
    super.initState();
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.red;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      body: signUpbody(),
    );
  }

  Widget signUpbody() {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode focus = FocusScope.of(context);
        if (!focus.hasPrimaryFocus && focus.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Registrarse',
                  style: GoogleFonts.rambla(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (name) {
                      if (name!.isEmpty) {
                        return 'Por favor, ingresa un nombre de usuario';
                      }
                      return null;
                    },
                    controller: nameController,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: inputDecoration('Nombre'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (username) {
                      if (username!.isEmpty) {
                        return 'Por favor, ingresa un nombre de usuario';
                      }
                      if (!ValidatorController.validateUsername(username)) {
                        return 'El nombre de usuario no puede contener espacios';
                      }
                      return null;
                    },
                    controller: userNameController,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: inputDecoration('Nombre de usuario'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (email) {
                      if (email == null) return null;
                      return ValidatorController.isValidEmail(email)
                          ? null
                          : "Introduce un correo válido";
                    },
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: inputDecoration('Correo'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                      obscureText: _obscureText,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (pass) {
                        if (pass!.isEmpty) {
                          return 'Por favor, ingresa una contraseña';
                        }
                        if (pass.length < 8) {
                          return 'La contraseña debe tener al menos 8 caracteres';
                        }
                        if (!pass.contains(RegExp(r'[a-zA-Z]'))) {
                          return 'La contraseña debe contener al menos una letra';
                        }
                        return null;
                      },
                      controller: passwordController,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          suffixIcon: CupertinoButton(
                            child: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: colorOne),
                            onPressed: () {
                              _obscureText = !_obscureText;
                              setState(() {});
                            },
                          ),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid)),
                          labelText: 'Contraseña',
                          labelStyle: GoogleFonts.rambla(
                              color: Colors.red, fontSize: 20))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    controller: dateController,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white, style: BorderStyle.solid)),
                        labelText: 'Fecha de Nacimiento',
                        hintText: 'aaaa/mm/dd',
                        hintStyle: GoogleFonts.rambla(color: Colors.white),
                        labelStyle: GoogleFonts.rambla(
                            color: Colors.red, fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    maxLength: 10,
                    controller: cellPhoneController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: inputDecoration('Celular'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 50,
                      child: Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: _isChecked,
                          onChanged: (value) {
                            _isChecked = !_isChecked;
                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      height: 50,
                      width: 240,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(milliseconds: 500),
                                  reverseTransitionDuration:
                                      const Duration(milliseconds: 300),
                                  pageBuilder: (context, animation, _) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: const TermsConditionsScreen(),
                                    );
                                  }));
                        },
                        child: RichText(
                            text: TextSpan(
                                text: 'He leído y acepto los ',
                                style: GoogleFonts.rambla(shadows: [
                                  const BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 0.0,
                                      blurRadius: 10)
                                ], fontSize: 14, color: Colors.white),
                                children: [
                              TextSpan(
                                text: 'Términos de Servicio',
                                style: GoogleFonts.rambla(
                                    shadows: [
                                      const BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 0.0,
                                          blurRadius: 10)
                                    ],
                                    fontSize: 14,
                                    color: Colors.red,
                                    decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                text: ' y ',
                                style: GoogleFonts.rambla(shadows: [
                                  const BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 0.0,
                                      blurRadius: 10)
                                ], fontSize: 14, color: Colors.white),
                              ),
                              TextSpan(
                                text: 'Políticas de Privacidad',
                                style: GoogleFonts.rambla(
                                    shadows: [
                                      const BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 0.0,
                                          blurRadius: 10)
                                    ],
                                    fontSize: 14,
                                    color: Colors.red,
                                    decoration: TextDecoration.underline),
                              )
                            ])),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_isChecked) {
                        if (emailController.text.isNotEmpty) {
                          if (passwordController.text.isNotEmpty) {
                            if (ValidatorController.validateMinimumAge(
                                dateController.text)) {
                              UserController.signUpUser(
                                  context,
                                  emailController.text,
                                  passwordController.text,
                                  userNameController.text,
                                  dateController.text,
                                  cellPhoneController.text,
                                  nameController.text,
                                  '0.0',
                                  '0.0',
                                  '0.0',
                                  '0.0',
                                  '0.0',
                                  '0.0',
                                  '0.0',
                                  '0.0',
                                  '0.0')
                                  .then((value) {
                                snackbar(context, 'Usuario Registrado!');
                                Navigator.push(
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
                                        }));
                              });
                            } else {
                              snackbar(
                                  context, '!No cumples con el mínimo de edad¡');
                            }
                          } else {
                            snackbar(context, '¡Escribe una contraseña!');
                          }
                        } else {
                          snackbar(context, '¡Escribe un correo!');
                        }
                      } else if (_isChecked == false) {
                        snackbar(context,
                            '¡Acepta los Términos y Condiciones para continuar!');
                      } else {
                        snackbar(context, '¡Ha ocurrido un error!');
                      }

                    },
                    style: buttonStyle(),
                    child: Text(
                      'Registrarse',
                      style:
                          GoogleFonts.rambla(color: Colors.white, fontSize: 25),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
