import 'package:flutter/material.dart';
import 'package:point_of_sale_lat/widgets/dropdown_menu.dart';
import 'package:point_of_sale_lat/widgets/list_product.dart';
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
      drawer: const NavDrawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              height: 80,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 250,
                    child: DropdownButtonMenu(),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.scanner,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ListProduct(),
            )
          ],
        ),
      ),
    );
  }
}
