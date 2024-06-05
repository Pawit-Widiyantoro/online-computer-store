import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class SuccessPage extends StatelessWidget{
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFF222629),
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("success.png", height: 63, width: 58.5,),
              const SizedBox(height: 20,),
              Text("Success", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
              const SizedBox(height: 20,),
              Text("Thank you for shopping!", style: TextStyle(color: Colors.white, fontSize: 12),),
              const SizedBox(height: 100,),
              SizedBox(
                height: 63,
                width: 365,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF222629),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    side: BorderSide(
                      color: Color(0xFF86C232), // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: Text("Back to Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),),
                  
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
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
                  child: Text("Invoice", style: TextStyle(color: Colors.white),),
                  
                ),
              ),
              
            ],
          )
          
          
        ),
      ),
    );
  }
}