import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameEdc = TextEditingController();
  final emailEdc = TextEditingController();
  final passEdc = TextEditingController();
  bool passInvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: ListView(
            children: [
              Center(
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              // const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 357,
                  height: 63,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF474B4F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: usernameEdc,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(color: Color(0xFFA1A4B2)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 357,
                  height: 63,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF474B4F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: emailEdc,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Color(0xFFA1A4B2)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 357,
                  height: 63,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF474B4F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: passEdc,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color(0xFFA1A4B2)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(passInvisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passInvisible = !passInvisible;
                            });
                          },
                        ),
                      ),
                      obscureText: !passInvisible,
                    ),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  height: 63,
                  width: 365,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF86C232),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ALREADY HAVE AN ACCOUNT ?",
                    style: TextStyle(color: Color(0xFFA1A4B2)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff86C232)),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
