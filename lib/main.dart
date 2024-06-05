import 'package:flutter/material.dart';
import 'package:online_computer_store/ui/add_address.dart';
import 'package:online_computer_store/ui/address.dart';
import 'package:online_computer_store/ui/cart.dart';
import 'package:online_computer_store/ui/detail.dart';
import 'package:online_computer_store/ui/homepage.dart';
import 'package:online_computer_store/ui/invoice.dart';
import 'package:online_computer_store/ui/landing_page.dart';
import 'package:online_computer_store/ui/login.dart';
import 'package:online_computer_store/ui/order.dart';
import 'package:online_computer_store/ui/payment.dart';
import 'package:online_computer_store/ui/profile.dart';
import 'package:online_computer_store/ui/register.dart';
import 'package:online_computer_store/ui/success.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Poppins'),
          displayMedium: TextStyle(fontFamily: 'Poppins'),
          displaySmall: TextStyle(fontFamily: 'Poppins'),
          headlineLarge: TextStyle(fontFamily: 'Poppins'),
          headlineMedium: TextStyle(fontFamily: 'Poppins'),
          headlineSmall: TextStyle(fontFamily: 'Poppins'),
          titleLarge: TextStyle(fontFamily: 'Poppins'),
          titleMedium: TextStyle(fontFamily: 'Poppins'),
          titleSmall: TextStyle(fontFamily: 'Poppins'),
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          bodySmall: TextStyle(fontFamily: 'Poppins'),
          labelLarge: TextStyle(fontFamily: 'Poppins'),
          labelSmall: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/homepage': (context) => HomePage(),
        '/detail': (context) => const detailPage(),
        '/cart': (context) => const cartPage(),
        '/address': (context) =>const  addressPage(),
        '/payment': (context) => const paymentPage(),
        '/success': (context) => const SuccessPage(),
        '/profile': (context) => const profilePage(),
        '/add_address': (context) => const addAddress(),
        '/orders': (context) => const orderPage(),
        '/invoice': (context) => const invoicePage(),
      },
    );
  }
}
