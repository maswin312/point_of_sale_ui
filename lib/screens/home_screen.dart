import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POINT of SALE'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Image(
            fit: BoxFit.cover,
            image: AssetImage(
                '/Users/windaru/Project/Flutter/point_of_sale_lat/assets/home.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Easy Management For Your Store'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Create New Account'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
