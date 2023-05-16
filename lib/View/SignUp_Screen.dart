import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  @override
  void initState() {
    // TODO: implement initState
    _isChecked = false;
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
          child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Text('Registrarse', style: GoogleFonts.rambla(fontSize: 26,fontWeight: FontWeight.bold, color: Colors.red),),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: inputDecoration('Correo'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: inputDecoration('Contraseña'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: inputDecoration('Nombre de usuario'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: inputDecoration('Fecha de nacimiento'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
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
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                            value: _isChecked,
                            onChanged: (value){
                              _isChecked = !_isChecked;
                              setState(() {
                              });
                        }),
                      ),
                        SizedBox(
                          height: 50,
                          width: 240,
                          child: GestureDetector(
                            onTap: (){},
                            child: RichText(
                                text: TextSpan(
                                  text: 'He leído y acepto los ',
                                  style: GoogleFonts.rambla(
                                      shadows: [
                                        const BoxShadow(
                                            color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                                      ],
                                    fontSize: 14, color: Colors.white
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Términos de Servicio',
                                      style: GoogleFonts.rambla(
                                        shadows: [
                                          const BoxShadow(
                                              color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                                        ],
                                        fontSize: 14, color: Colors.red,
                                          decoration: TextDecoration.underline
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' y ',
                                      style: GoogleFonts.rambla(
                                          shadows: [
                                            const BoxShadow(
                                                color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                                          ],
                                        fontSize: 14, color: Colors.white
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Políticas de Privacidad',
                                      style: GoogleFonts.rambla(
                                        shadows: [
                                          const BoxShadow(
                                              color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                                        ],
                                        fontSize: 14, color: Colors.red,
                                          decoration: TextDecoration.underline
                                      ),
                                    )
                                  ]
                            )),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      style: buttonStyle(),
                      child: Text('Registrarse',style:
                      GoogleFonts.rambla(color: Colors.white, fontSize: 25),)
                  )
                ],
              ),

            ),
          ]
        ),
      ),
        );
  }
}
