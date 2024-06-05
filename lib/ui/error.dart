import "package:flutter/material.dart";

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Error: Product details not provided',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
