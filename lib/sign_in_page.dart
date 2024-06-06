import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF333333);
    double buttonWidth = 140; // Set a fixed width for the buttons
    double buttonExit = 55;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: const Color(0xFF05E0E9),
          automaticallyImplyLeading: false, // Removes the back button
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFC0F0F7),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/sphere-cloud.png'),
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 35),
                        child: Text(
                          'PD',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'FingerPaint',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30, fontFamily: 'FingerPaint'),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          width: buttonWidth,
                          height: 52,
                          decoration: BoxDecoration(
                            color: buttonColor,
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Add your sign-in functionality here
                            },
                            child: const Text(
                              'Gmail',
                              style: TextStyle(color: Colors.white, fontFamily: 'FingerPaint'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Or',
                        style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'FingerPaint'),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          width: buttonWidth,
                          height: 52,
                          decoration: BoxDecoration(
                            color: buttonColor,
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Add your log-in functionality here
                            },
                            child: const Text(
                              'Facebook',
                              style: TextStyle(color: Colors.white, fontFamily: 'FingerPaint'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: -90,
            bottom: 0,
            left: -150,
            right: 0,
            child: Center(
              child: Text(
                '[', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          const Positioned(
            top: -90,
            bottom: 0,
            left: 0,
            right: -150,
            child: Center(
              child: Text(
                ']', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          const Positioned(
            top: 125,
            bottom: 0,
            left: -150,
            right: 0,
            child: Center(
              child: Text(
                '[', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          const Positioned(
            top: 125,
            bottom: 0,
            left: 0,
            right: -150,
            child: Center(
              child: Text(
                ']', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: buttonExit,
                height: buttonExit, // Make the container a square for a circular shape
                decoration: const ShapeDecoration(
                  color: Colors.white, // Changed color to white
                  shape: CircleBorder(),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Closes the current screen
                  },
                  child: const Text(
                    'Exit',
                    style: TextStyle(color: Colors.black, fontFamily: 'FingerPaint'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}