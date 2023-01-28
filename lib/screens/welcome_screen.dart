import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.computer_outlined,
                  size: 37,
                  color: Color(0xff1A72DD),
                ),
                SizedBox(width: 5),
                Text(
                  "MokPOS.",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1A72DD),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/6.png'),
            const Text(
              "Easy Management for your Store",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Column(
              children: [
                SizedBox(
                  width: 327,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Create new account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 327,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xff1A72DD),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        color: Color(0xff1A72DD),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
