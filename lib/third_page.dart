import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isListButtonVisible = false;
  bool isAccountButtonVisible = false;

  void _toggleListButtonsVisibility() {
    setState(() {
      isListButtonVisible = !isListButtonVisible;
    });
  }

  void _toggleAccountButtonsVisibility() {
    setState(() {
      isAccountButtonVisible = !isAccountButtonVisible;
    });
  }

  void _showUserDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color(0xFF05E0E9),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.zero,
              border: Border.all(color: Colors.black),
            ),
            child: SizedBox(
              width: 300,
              height: 700,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'User Account',
                      style: TextStyle(
                        fontFamily: 'FingerPaint',
                        color: Colors.black,
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const Text(
                        'Guest Mode',
                        style: TextStyle(
                          fontFamily: 'FingerPaint',
                          color: Colors.black,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Samrin',
                      style: TextStyle(
                        fontFamily: 'FingerPaint',
                        color: Colors.black,
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'FingerPaint',
                          color: Colors.black,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '*************',
                      style: TextStyle(
                        fontFamily: 'FingerPaint',
                        color: Colors.black,
                        fontSize: 24,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF05E0E9),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.list,
            size: 50,
          ),
          onPressed: _toggleListButtonsVisibility, // Toggle list buttons visibility
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 45,
              color: Colors.black,
            ),
            onPressed: _toggleAccountButtonsVisibility, // Toggle account buttons visibility
          ),
        ],
        title: null,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFC0F0F7),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 95,
            left: 5,
            child: Visibility(
              visible: isListButtonVisible,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF333333),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  'Can',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FingerPaint',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 5,
            child: Visibility(
              visible: isListButtonVisible,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF333333),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  'Titles',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FingerPaint',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -5,
            left: 5,
            child: Visibility(
              visible: isListButtonVisible,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF333333),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  'History',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'FingerPaint',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            right: 20,
            child: ClipOval(
              child: Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    // Handle button press action
                  },
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            right: 20,
            child: ClipOval(
              child: Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    // Handle button press action
                  },
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Transform.translate(
                      offset: const Offset(0, -8),
                      child: Center(
                        child: Text(
                          '=',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            right: 20,
            child: ClipOval(
              child: Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    // Handle button press action
                  },
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            right: 20,
            child: ClipOval(
              child: Material(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    // Handle button press action
                  },
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: const Icon(
                      Icons.folder,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -5,
            right: 5,
            child: Visibility(
              visible: isAccountButtonVisible,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _showUserDialog,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'User',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'FingerPaint',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Handle the onPressed event for the logout button
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF333333),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'FingerPaint',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
