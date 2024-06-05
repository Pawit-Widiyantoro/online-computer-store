import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class LandingPage extends StatelessWidget{
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      body: Center(
        child: Container(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("ilustrasi.png", height: 382, width: 390,),
              const SizedBox(height: 50,),
              Text("Online Computer Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.white),),
              const SizedBox(height: 20,),
              Text("Performa tinggi, harga kompetitif, pilihan tepat untuk anda!", style: TextStyle(color: Color(0xff474B4F), fontSize: 14),),
              const SizedBox(height: 100,),
              SizedBox(
                height: 63,
                width: 365,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF86C232),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: Text("Register", style: TextStyle(color: Colors.white),),
                  
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("ALREADY HAVE AN ACCOUNT?", style: TextStyle(color: Color(0xFFA1A4B2)),),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  }, 
                    child: const Text("LOGIN", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff86C232)
                    ),))
                ],
              )
            ],
          ) 
        ),
      ),
    );
  }
}