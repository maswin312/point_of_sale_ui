import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:point_of_sale_lat/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Point of Sale',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff1A72DD),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
