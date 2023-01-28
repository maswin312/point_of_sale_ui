import 'package:flutter/material.dart';
import 'package:point_of_sale_lat/widgets/nav_drawer.dart';

class CashierScreen extends StatelessWidget {
  const CashierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff1A72DD),
        ),
        title: const Text(
          "Cashier",
          style: TextStyle(
            color: Color(0xff1A72DD),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: NavDrawer(),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
