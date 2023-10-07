import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/persistent_bottom_nav_page.dart';
import 'package:flutter_application_7/Fournisseur/screens/client_list.dart';
import 'package:flutter_application_7/Fournisseur/screens/home_page.dart';
import 'package:flutter_application_7/Fournisseur/screens/product_list.dart';

import 'login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}