import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailEdc = TextEditingController();
  final passEdc = TextEditingController();
  bool passInvisible = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: ListView(
            children: [
              Center(
                child: const Text("Login", style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white
                ),),
              ),
              // const SizedBox(height: 25,),
              Container(
                margin: const EdgeInsets.only(top:50),
                child: SizedBox(
                width: 357, height: 63,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF474B4F),
                    borderRadius: BorderRadius.circular(15),
                    
                  ),
                  child: TextFormField(
                    controller: emailEdc,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xFFA1A4B2)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical:20),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                            ),
              ),

              Container(
                margin: const EdgeInsets.only(top:50),
                child: SizedBox(
                width: 357, height: 63,
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical:20),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(passInvisible ? Icons.visibility : Icons.visibility_off),
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
                    Navigator.pushNamed(context, "/homepage");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF86C232),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                           ),
             ),

              // const SizedBox(height: 30.0,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     GestureDetector(
              //       onTap: (){
              //         signInWithGoogle();
              //       },
              //       child: const CircleAvatar(
              //         radius: 20.0,
              //         backgroundImage: NetworkImage('https://img2.pngdownload.id/20190228/qby/kisspng-google-logo-google-account-g-suite-google-images-g-icon-archives-search-png-5c77ad39b77471.9286340315513470017515.jpg'),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 30.0,
              //     ),
              //     GestureDetector(
              //       onTap: (){
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => PhoneAuthScreen())
              //         );
              //       },
              //       child: const CircleAvatar(
              //         radius: 20.0,
              //         backgroundImage: NetworkImage('https://freepngimg.com/thumb/business/83615-blue-icons-symbol-telephone-computer-logo.png'),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("DON'T HAVE AN ACCOUNT?", style: TextStyle(color: Color(0xFFA1A4B2)),),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  }, 
                    child: const Text("Register", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff86C232)
                    ),))
                ],
              )
            ],
          )
        ),
      );
  }
}