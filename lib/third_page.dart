import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool isButtonVisible = false;

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
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 45,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                isButtonVisible = !isButtonVisible; // Toggle button visibility
              });
            },
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
              visible: isButtonVisible,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle the onPressed event for the new button
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF333333),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Box shape with zero border radius
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
                  SizedBox(height: 10), // Adjust the spacing between buttons as needed
                  TextButton(
                    onPressed: () {
                      // Handle the onPressed event for the new button
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF333333),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Box shape with zero border radius
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
