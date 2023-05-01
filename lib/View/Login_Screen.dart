import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parchelapp/Styles/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool _obscureText;

  @override
  void initState() {
    // TODO: implement initState
    _obscureText = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorThree,
      body: loginBody(),
    );
  }

  Widget loginBody() {
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
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
                child: Container(
                  height: 140,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                            color: colorOne, spreadRadius: -20, blurRadius: 20)
                      ],
                      image: DecorationImage(
                          scale: 2.0, image: AssetImage("assets/logo.png"))),
                  child: const Image(
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'ParchelApp',
                style:
                    GoogleFonts.justAnotherHand(color: colorOne, fontSize: 60),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'El exceso de diversión es saludable para el alma!',
                style: GoogleFonts.justAnotherHand(shadows: [
                  const BoxShadow(
                      color: Colors.black, spreadRadius: 0.0, blurRadius: 10)
                ], color: colorOne, fontSize: 30),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Iniciar Sesión",
                      style: GoogleFonts.rambla(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid)),
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid)),
                          labelText: 'Correo',
                          labelStyle: GoogleFonts.rambla(
                              color: Colors.red, fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      obscureText: _obscureText,
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
                              color: Colors.red, fontSize: 20)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorOne,
                        minimumSize: const Size(400, 50),
                        shadowColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Text(
                      'Ingresar',
                      style:
                          GoogleFonts.rambla(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                      child: Text(
                    'O registrate con tus redes sociales',
                    style: GoogleFonts.asap(
                        color: colorOne,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(124, 55),
                        ),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/google.jpeg'),
                              width: 35,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Google',
                              style: GoogleFonts.asap(
                                  color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              //rgb(59, 89, 152)
                              const Color.fromRGBO(59, 89, 152, 3),
                          minimumSize: const Size(124, 55),
                        ),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/face.png'),
                              width: 35,
                              height: 40,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Facebook',
                              style: GoogleFonts.asap(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          '¿No tienes una cuenta?',
                          style: GoogleFonts.asap(color: colorOne, fontSize: 19),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text('Regístrate',
                          style: GoogleFonts.asap(color: colorOne, fontSize: 19, decoration: TextDecoration.underline),),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
