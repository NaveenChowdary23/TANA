import 'package:flutter/material.dart';
import 'package:tana/IndiaBenfits.dart';
import 'package:tana/NationalBenfits.dart';
import 'package:tana/ReginalBenfits.dart';

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
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  int selectedButtonIndex = 0;

  void onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index; // Update the selected button index
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
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
          height: Height * 0.2,
          child: Center(
            child: Text(
              "Welcome to TANA",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Height * 0.45,
              width: Width * 0.8,
              decoration: BoxDecoration(
                color: Color(0xFFFFC000),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in the x and y direction
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: Height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () => onButtonPressed(0),
                        child: const Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  CustomTextFields(
                    controller1: _controller1,
                    controller2: _controller2,
                  ),
                  SizedBox(
                    height: Height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF074F93), // Background color
                          onPrimary: Colors.white, // Text color
                          minimumSize: Size(150, 50), // Minimum size
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15), // Padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            // Rounded corners
                          ),
                          elevation: 5, // Shadow elevation
                        ),
                        child: const Text('Sign In'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
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
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
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
          SizedBox(
            width: Width *
                0.4, // Adjust the width as needed, assuming Width is defined in your context
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter code',
              ),
            ),
          ),
          SizedBox(
            height: Height * 0.08,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClientScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFC000), // Background color
              onPrimary: Colors.white, // Text color
              minimumSize: Size(150, 50), // Minimum size
              padding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                // Rounded corners
              ),
              elevation: 5, // Shadow elevation
            ),
            child: const Text('Verify'),
          ),
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

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
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
            height: Height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'Welcome Naveen',
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
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'TANA ID CARD',
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
            height: Height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Height * 0.25,
                width: Width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFFFFC000),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset('assets/header.png',
                  height: Height * 0.08, width: Width * 1),
            
                    SizedBox(
                      height: Height * 0.02,
                    ),
                    Center(child: Text("Naveen Chowdary Maguluri",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    SizedBox(
                      height: Height * 0.05,
                    ),
                    Row(children: [
                      SizedBox(width: Width*0.1,),
                      Text("Member ID : L-123456"),
                    ],)
                     
                    
                  ],
                ),
              )
            ],
          ),
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
                  'Benfit Center',
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
            height: Height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Height * 0.3,
                width: Width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFFCA0000),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
                child: Column(
                  
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NationalBenfits()),
              );
                    // Add your button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('National Level Benfits'),
                ),
                SizedBox(width: Width*0.05), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegionalBenfits()),
              );
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('Regional Benfits'),
                ),
                SizedBox(width: Width*0.05), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndiaBenfits()),
              );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('India Benfits'),
                ),
              ],
            
                ),
              )
            ],
          ),
          SizedBox(
            height: Height * 0.02,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('Benfits Home'),
                ),
                SizedBox(width: Width*0.05), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('My Benfits'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

