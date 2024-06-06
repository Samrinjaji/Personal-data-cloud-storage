import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF333333);
    double buttonWidth = 140;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: const Color(0xFF05E0E9),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ThirdPage()),
          );
        },
        child: Stack(
          children: [
            Container(
              color: const Color(0xFFC0F0F7),
            ),
            Positioned(
              top: 100,
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
                          padding: EdgeInsets.only(right: 50),
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
                    const SizedBox(height: 20),
                    const Text(
                      'Cloud Storage',
                      style: TextStyle(fontSize: 30, fontFamily: 'FingerPaint'),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        /* Commented out the "Click to sign in" button
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 90.0),
                          child: Container(
                            width: buttonWidth,
                            height: 52,
                            decoration: BoxDecoration(
                              color: buttonColor,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signIn');
                              },
                              child: const Text(
                                'Click to sign in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'FingerPaint',
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        */
                        const SizedBox(height: 15),
                        const Text(
                          'Or',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'FingerPaint',
                          ),
                        ),
                        const SizedBox(height: 15),
                        /* Commented out the "Click to log in" button
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
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                'Click to log in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'FingerPaint',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        */
                        const SizedBox(height: 15),
                        const SizedBox(height: 30), // Added spacing here
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                                );
                              },
                              child: const Text(
                                'Guest Mode',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'FingerPaint',
                                  fontSize: 16,
                                ),
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
            /* Commented out the Positioned widgets for the brackets
            const Positioned(
              top: 180,
              bottom: 0,
              left: -150,
              right: 0,
              child: Center(
                child: Text(
                  '[', // Bracket for "Sign In"
                  style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
                ),
              ),
            ),
            const Positioned(
              top: 180,
              bottom: 0,
              left: 0,
              right: -150,
              child: Center(
                child: Text(
                  ']', // Bracket for "Sign In"
                  style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
                ),
              ),
            ),
            const Positioned(
              top: 396,
              bottom: 0,
              left: -150,
              right: 0,
              child: Center(
                child: Text(
                  '[', // Bracket for "Log In"
                  style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
                ),
              ),
            ),
            const Positioned(
              top: 396,
              bottom: 0,
              left: 0,
              right: -150,
              child: Center(
                child: Text(
                  ']', // Bracket for "Log In"
                  style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
                ),
              ),
            ),
            */
            // Positioned widgets for the "Guest Mode" brackets remain intact
            const Positioned(
              top: 200,
              bottom: 0,
              left: -150,
              right: 0,
              child: Center(
                child: Text(
                  '[', // Bracket for "Guest Mode"
                  style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
                ),
              ),
            ),
            const Positioned(
              top: 200,
              bottom: 0,
              left: 0,
              right: -150,
              child: Center(
                child: Text(
                  ']', // Bracket for "Guest Mode"
                  style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
