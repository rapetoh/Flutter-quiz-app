import 'package:educationnal_app/screens/category.dart';
import 'package:educationnal_app/screens/favorite.dart';
import 'package:educationnal_app/screens/home_screen.dart';
import 'package:educationnal_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:educationnal_app/screens/welcome_screen.dart';
import 'package:flutter/services.dart';



void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF464646),
    statusBarColor: Color(0xFF674AEF),
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/category': (context) => Category(),
        '/profile': (context) => Profile(),
        '/favorite': (context) => Favorite(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }
        )
      ),
    );
  }
}

