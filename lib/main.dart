
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
            const Positioned(
              top: 592,
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
              top: 592,
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

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF05E0E9),
        automaticallyImplyLeading: false, // Removes the back button
        leading: IconButton(
          icon: const Icon(
            Icons.list, // Change to Icon(Icons.list) for list icon
            size: 50, // Adjust size as needed
          ),
          onPressed: () {
            // Handle the onPressed event as needed
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 45,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle the onPressed event for the account circle icon
            },
          ),
        ],
        title: null, // Removes the title
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFC0F0F7), // Match the background color of the SecondPage
          ),
          Positioned(
            top: 50, // Adjusted top position to position between the sphere and app bar
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  // Placeholder for the image logo with text 'PD'
                  Container(
                    width: 250, // Adjust width as needed
                    height: 200, // Adjust height as needed
                    decoration: BoxDecoration(
                      // You can customize the decoration for the image logo
                      image: const DecorationImage(
                        image: AssetImage('assets/sphere-cloud.png'), // Replace 'assets/sphere-cloud.png' with your image path
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 50), // Adjust padding as needed
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
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 300, // Adjust the bottom position as needed
            right: 20, // Adjust the right position as needed
            child: ClipOval(
              // ClipOval widget to apply border radius
              child: Material(
                color: Colors.black, // Button color
                child: InkWell(
                  // InkWell for tap effect
                  onTap: () {
                    // Handle button press action
                  },
                  child: SizedBox(
                    width: 40, // Button width
                    height: 40, // Button height
                    child: const Icon(
                      Icons.add,
                      color: Colors.white, // Icon color
                      size: 30, // Icon size
                    ),
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

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    'Log in',
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





