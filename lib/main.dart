import 'package:flutter/material.dart';
import 'package:proyecto_dos/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App 2',
      initialRoute: 'home',
      routes: {
        'home'  :(BuildContext context) => const HomeScreen(), 
        'listview1':(BuildContext context) => const ListView1Screen(),
        'listview2':(BuildContext context) => const ListViewScreen2(),
        'alert': (BuildContext context) => const AlertScreen(),
        'cart': (BuildContext context) => const CardScreen()   
      },
    );
  }
}

  
