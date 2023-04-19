import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    //transform: Matrix4.translation(),
                    height: 220,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(218, 74, 22, 60),
                              spreadRadius: 0.0,
                              blurRadius: 20)
                        ],
                        image: DecorationImage(
                          scale: 2.0,
                            image: AssetImage("assets/logo.png"))),
                    child: const Image(
                      image: AssetImage("assets/logo.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
