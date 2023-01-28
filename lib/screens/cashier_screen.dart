import 'package:flutter/material.dart';

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
      drawer: const Drawer(
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
