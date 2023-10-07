// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_7/Fournisseur/screens/client_list.dart';
import 'package:flutter_application_7/Fournisseur/screens/product_list.dart';
import 'package:flutter_application_7/Fournisseur/utils/card.dart';
import 'package:flutter_application_7/Fournisseur/utils/fournisseur_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Card',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    //Button
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //Card
            Mycard(
              balance: 2500.00,
            ),
            //Clients +
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClientList(),
                        ),
                      );
                    },
                    child: FournisseurList(
                      IconF: Icons.person_search_sharp,
                      TitleF: 'Clients',
                      SubTitleF: 'devis et facture',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductList(),
                        ),
                      );
                    },
                    child: FournisseurList(
                      IconF: Icons.add_shopping_cart_rounded,
                      TitleF: 'Products',
                      SubTitleF: 'add and edit product',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}