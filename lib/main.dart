import 'package:flutter/material.dart';
import 'package:tana/home.dart';
import 'package:tana/mainBenfits.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TANA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set the SplashScreen as the initial screen
    );
  }
}

class SplashScreen extends StatefulWidget {
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
        Duration(seconds: 3), () {}); // Set the duration for the splash screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(), // Replace with your main screen
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
            SizedBox(height: 20),
            CircularProgressIndicator(), // Optional: A loading indicator
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffeeeff4),
        body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFFC20000), // Left color
        Color(0xFFA00000), // Right color
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  ), // Replace with your desired color
          child:Column(children: [ 
            SizedBox(height: Height*0.04,),
          SizedBox(
            height: Height * 0.10,
            width: Width * 1,
            child: Image.asset('assets/header.png',
                height: Height * 0.2, width: Width * 1),
          ),
          
        ],)),
        SizedBox(
          height: Height * 0.3,
          child: Center(
            child: Text(
              "Welcome to TANA",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        SizedBox(width: Width*0.8,child: Center(child: TextField(
                controller: _usernameController,
                cursorColor: Colors.red,
                obscureText: true,
                decoration: InputDecoration(
                   filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),),),
                            SizedBox(height: 20.0),
              SizedBox(width: Width*0.8,child: Center(child: TextField(
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
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),),),
              
              SizedBox(height: 20.0),
              SizedBox(width: Width*0.8,child: Center(child:
               Container(
          width: Width*0.8, // Adjust width as needed
          height: 60, // Adjust height as needed
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  VerifyScreen()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),),),
        SizedBox(
          height: Height * 0.08,
        ),
        Row(
          children: [
            SizedBox(
              width: Width * 0.1,
            ),
            SizedBox(
              width: Width * 0.8, // Adjust the width as needed
              child: Text(
                'Telugu Association of North America (or TANA, as it is well known) is the oldest and biggest Indo-American organization in North America.',
                maxLines: null, // Allows the text to wrap to a new line
                overflow:
                    TextOverflow.visible, // Ensures the text is fully visible
                style: TextStyle(
                  fontSize: 16.0, // Adjust the font size as needed
                ),
              ),
            ),
            SizedBox(
              width: Width * 0.1,
            ),
          ],
        )
      ],
    ));
  }
}

class CustomTextFields extends StatelessWidget {
  final TextEditingController controller1;
  final TextEditingController controller2;

  CustomTextFields({required this.controller1, required this.controller2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: controller1,
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: controller2,
            decoration: const InputDecoration(
              hintText: 'Last name',
            ),
          ),
        ),
      ],
    );
  }
}

class VerifyScreen extends StatelessWidget {
   VerifyScreen({super.key});
  final TextEditingController _code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffeeeff4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
          decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFFC20000), // Left color
        Color(0xFFA00000), // Right color
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  ), // Replace with your desired color
          child:Column(children: [ 
            SizedBox(height: Height*0.04,),
          SizedBox(
            height: Height * 0.10,
            width: Width * 1,
            child: Image.asset('assets/header.png',
                height: Height * 0.2, width: Width * 1),
          ),
        ],)),
          SizedBox(
            height: Height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'Telugu Association of North America (or TANA, as it is well known) is the oldest and biggest Indo-American organization in North America.',
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 16.0, // Adjust the font size as needed
                  ),
                ),
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.04,
          ),
          Center(
              child: Text(
            'Authentication Code',
            style: TextStyle(fontSize: 30),
          )),
          SizedBox(
            height: Height * 0.08,
          ),
          SizedBox(width: Width*0.8,child: Center(child: TextField(
                controller: _code,
                cursorColor: Colors.red,
                obscureText: true,
                decoration: InputDecoration(
                   filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),),),
              
          SizedBox(
            height: Height * 0.08,
          ),
          SizedBox(width: Width*0.8,child: Center(child:
               Container(
          width: Width*0.8, // Adjust width as needed
          height: 60, // Adjust height as needed
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  MainBenfits()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),),),
          SizedBox(
            height: Height * 0.15,
          ),
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'Telugu Association of North America (or TANA, as it is well known) is the oldest and biggest Indo-American organization in North America.',
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 16.0, // Adjust the font size as needed
                  ),
                ),
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

