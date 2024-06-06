import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), // Adjust the height as needed
        child: AppBar(
          backgroundColor: const Color(0xFF05E0E9), // AppBar color
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/second');
        },
        child: Stack(
          children: [
            Container(
              color: const Color(0xFFC0F0F7), // Body background color
            ),
            Positioned(
              top: 100, // Adjusted top position to position between the sphere and app bar
              left: 0,
              right: 0,
              child: Center(
                child: Column(
                  children: [
                    // Placeholder for the image logo with text 'PD'
                    Container(
                      width: 250, // Adjust width as needed
                      height: 200, // Adjust height as needed
                      decoration: const BoxDecoration(
                        // You can customize the decoration for the image logo
                        image: DecorationImage(
                          image: AssetImage('assets/sphere-cloud.png'), // Replace 'assets/sphere-cloud.png' with your image path
                        ),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 50), // Adjust left padding as needed
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
                    const SizedBox(height: 20), // Add spacing between logo and text
                    const Text(
                      'Cloud Storage',
                      style: TextStyle(fontSize: 30, fontFamily: 'FingerPaint'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

