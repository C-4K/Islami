import 'package:flutter/material.dart';
import 'package:prctic3/Home_page.dart';
void main(){
  runApp(Islami_App());

}
class MyThemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedIconColor = Color.fromRGBO(8, 8, 8, 1.0);
  static final unSelectedIconColor = Color.fromRGBO(255, 255, 255, 1.0);
  static final colorBlack = Color.fromRGBO(5, 5, 5, 1.0);
}
class Islami_App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Islami_app',


  routes: {
    Tasbih_Page.Route_name:(buildContext)=>Tasbih_Page(),
  },
    initialRoute: Tasbih_Page.Route_name ,

  );
  }
}
