import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/mainBenfits.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TANA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set the SplashScreen as the initial screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
        const Duration(seconds: 3), () {}); // Set the duration for the splash screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MainScreen(), // Replace with your main screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // You can change the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png',
                height: 100, width: 100), // Replace with your logo
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // Optional: A loading indicator
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _TwoTextInputsState createState() => _TwoTextInputsState();
}

class _TwoTextInputsState extends State<MainScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  int selectedButtonIndex = 0;

  void onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index; // Update the selected button index
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffeeeff4),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFC20000),
                    Color(0xFFA00000),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(children: [
                SizedBox(height: height * 0.04),
                SizedBox(
                  height: height * 0.10,
                  width: width * 1,
                  child: Image.asset('assets/header.png',
                      height: height * 0.2, width: width * 1),
                ),
              ]),
            ),
            SizedBox(
              height: height * 0.3,
              child: const Center(
                child: Text(
                  "Welcome to TANA",
                  style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.8,
              child: Center(
                child: TextField(
                  controller: _usernameController,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: width * 0.8,
              child: Center(
                child: TextField(
                  controller: _passwordController,
                  cursorColor: Colors.red,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Last name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: width * 0.8,
              child: Center(
                child: SizedBox(
                  width: width * 0.8, // Adjust width as needed
                  height: 60, // Adjust height as needed
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.08),
            Row(
              children: [
                SizedBox(width: width * 0.1),
                SizedBox(width: width * 0.1),
              ],
            ),
            SizedBox(height: height * 0.13),
            Row(children: [
              SizedBox(width: width * 0.1),
              Builder(
                builder: (context) => GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Row(children: [
              SizedBox(width: width * 0.1),
              const Text('menu'),
            ]),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}///////////////////////////////

class VerifyScreen extends StatelessWidget {
  VerifyScreen({super.key});
  final TextEditingController _code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffeeeff4),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFC20000),
                    Color(0xFFA00000),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(children: [
                SizedBox(height: height * 0.04),
                SizedBox(
                  height: height * 0.10,
                  width: width * 1,
                  child: Image.asset('assets/header.png',
                      height: height * 0.2, width: width * 1),
                ),
              ]),
            ),
            SizedBox(height: height * 0.04),
            Row(
              children: [
                SizedBox(width: width * 0.1),
                SizedBox(
                  width: width * 0.8,
                  child: const Text(
                    'We Sent an Authorization Code to your Email. Please Enter Authorization Code to Authorize',
                    maxLines: null,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                SizedBox(width: width * 0.1),
              ],
            ),
            SizedBox(height: height * 0.04),
            const Center(
              child: Text(
                'Authentication Code',
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
              ),
            ),
            SizedBox(height: height * 0.08),
            SizedBox(
              width: width * 0.8,
              child: Center(
                child: TextField(
                  controller: _code,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.08),
            SizedBox(
              width: width * 0.8,
              child: Center(
                child: SizedBox(
                  width: width * 0.8, // Adjust width as needed
                  height: 60, // Adjust height as needed
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainBenfits()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
            Row(
              children: [
                SizedBox(width: width * 0.1),
                SizedBox(
                  width: width * 0.8,
                  child: const Text(
                    'Telugu Association of North America (or TANA, as it is well known) is the oldest and biggest Indo-American organization in North America.',
                    maxLines: null,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                SizedBox(width: width * 0.1),
              ],
            ),
            SizedBox(height: height * 0.07),
            Row(children: [
              SizedBox(width: width * 0.1),
              Builder(
                builder: (context) => GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Row(children: [
              SizedBox(width: width * 0.1),
              const Text('menu'),
            ]),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
