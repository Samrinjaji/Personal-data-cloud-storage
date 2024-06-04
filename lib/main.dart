import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: const HomePage(),
      routes: {
        '/second': (context) => const SecondPage(),
        '/signIn': (context) => const SignInPage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}

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
                          padding: EdgeInsets.only(right: 35), // Adjust left padding as needed
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

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the color #333333
    Color buttonColor = const Color(0xFF333333);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), // Adjust the height as needed
        child: AppBar(
          backgroundColor: const Color(0xFF05E0E9), // AppBar color
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFC0F0F7), // Body background color
          ),
          // Adding the second logo similar to the first page
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
                        padding: EdgeInsets.only(right: 35), // Adjust left padding as needed
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
                  const SizedBox(height: 20), // Add spacing between text and buttons
                  // Add the boxes and 'OR' text
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0), // Add left and right padding
                        child: Container(
                          height: 52, // Set height as needed
                          decoration: BoxDecoration(
                            color: buttonColor, // Using the color #333333
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signIn'); // Navigate to SignInPage
                            },
                            child: const Text(
                              'Click to sign in',
                              style: TextStyle(color: Colors.white, fontFamily: 'FingerPaint'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15), // Add spacing between buttons
                      const Text(
                        'Or',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black, fontFamily: 'FingerPaint'
                        ),
                      ),
                      const SizedBox(height: 15), // Add spacing between 'OR' text and second button
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0, right: 90.0), // Add left and right padding
                        child: Container(
                          height: 52, // Set height as needed
                          decoration: BoxDecoration(
                            color: buttonColor, // Using the color #333333
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login'); // Navigate to LoginPage
                            },
                            child: const Text(
                              'Click to log in',
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
          // Adding the additional text
          const Positioned(
            top: 0,
            bottom: 0, // Adjust the bottom position as needed
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
            top: 0,
            bottom: 0, // Adjust the bottom position as needed
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
            top: 214,
            bottom: 0, // Adjust the bottom position as needed
            left: -140,
            right: 0,
            child: Center(
              child: Text(
                '[', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          const Positioned(
            top: 214,
            bottom: 0, // Adjust the bottom position as needed
            left: 0,
            right: -140,
            child: Center(
              child: Text(
                ']', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF333333);

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
                    'Sign in',
                    style: TextStyle(fontSize: 30, fontFamily: 'FingerPaint'),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
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
                        padding: const EdgeInsets.only(left: 150.0, right: 150.0),
                        child: Container(
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
            top: 0,
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
            top: 0,
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
            top: 214,
            bottom: 0,
            left: -140,
            right: 0,
            child: Center(
              child: Text(
                '[', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          const Positioned(
            top: 214,
            bottom: 0,
            left: 0,
            right: -140,
            child: Center(
              child: Text(
                ']', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color(0xFF333333);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: const Color(0xFF05E0E9),
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
                    'Log in',
                    style: TextStyle(fontSize: 30, fontFamily: 'FingerPaint'),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: buttonColor,
                          ),
                          child: TextButton(
                            onPressed: () {
                              // Add your log-in functionality here
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
                        padding: const EdgeInsets.only(left: 150.0, right: 150.0),
                        child: Container(
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
            top: 0,
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
            top: 0,
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
            top: 214,
            bottom: 0,
            left: -140,
            right: 0,
            child: Center(
              child: Text(
                '[', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
          const Positioned(
            top: 214,
            bottom: 0,
            left: 0,
            right: -140,
            child: Center(
              child: Text(
                ']', // Your additional text
                style: TextStyle(fontSize: 70, color: Color(0xFF333333)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
