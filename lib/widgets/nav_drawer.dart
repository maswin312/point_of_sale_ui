import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff1A72DD),
            ),
            child: Text(
              'MyNameStore',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.attach_money,
              size: 24.0,
            ),
            title: const Text('Cashier'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.history,
              size: 24.0,
            ),
            title: const Text('History Transaction'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.book,
              size: 24.0,
            ),
            title: const Text('Report'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.account_box_rounded,
              size: 24.0,
            ),
            title: const Text('Account'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
