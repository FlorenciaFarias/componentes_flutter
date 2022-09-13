import 'package:flutter/material.dart';
import 'package:proyecto_dos/screens/screens.dart';

import '../models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(
      route: 'home', 
      icon: Icons.home, 
      name: 'Home Screen', 
      screen: const HomeScreen()
    ),
    MenuOption(
      route: 'listview1', 
      icon: Icons.list_alt_outlined, 
      name: 'Listview tipo 1', 
      screen: const ListView1Screen()
    ),
     MenuOption(
      route: 'listview2', 
      icon: Icons.list_alt_rounded, 
      name: 'Listview tipo 2', 
      screen: const ListViewScreen2()
    ),
     MenuOption(
      route: 'Card', 
      icon: Icons.sim_card_rounded, 
      name: 'Cart', 
      screen: const CardScreen()
    ),
     MenuOption(
      route: 'alert', 
      icon: Icons.add_alert_outlined, 
      name: 'Alert', 
      screen: const AlertScreen()
    ),
  ];




  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> AppRoutes = {};
      for(final option in menuOptions){
        AppRoutes.addAll({
          option.route : (BuildContext context) => option.screen
        });
      }
    return AppRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings setting){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(), 
      );
  }
}
