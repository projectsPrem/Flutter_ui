import'package:flutter/material.dart';
import'./DashboardScreen.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor : Colors.white),
//     darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home :DashboardScreen(),
    );
  }
}
