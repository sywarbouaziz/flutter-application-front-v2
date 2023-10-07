import 'package:flutter/material.dart';

import 'package:flutter_application_7/Fournisseur/persistent_bot_state.dart';
import 'package:flutter_application_7/Fournisseur/persistent_tab_item.dart';
import 'package:flutter_application_7/Fournisseur/screens/form/product_form.dart';
import 'package:flutter_application_7/Fournisseur/screens/home_page.dart';
import 'package:flutter_application_7/Fournisseur/screens/profile/profile_screen.dart';

class PersistentBottomNavPage extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();

  PersistentBottomNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: const HomePage(),
          icon: Icons.home,
          title: 'Home',
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab:  ProductForm(),
          icon: Icons.add_box,
          title: ' Add ',
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: ProfileScreen(),
          icon: Icons.person,
          title: 'Profile',
          navigatorkey: _tab3navigatorKey,
        ),
      ],
    );
  }
}