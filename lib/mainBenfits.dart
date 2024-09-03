import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/IndiaBenfits.dart';
import 'package:tana/NationalBenfits.dart';
import 'package:tana/ReginalBenfits.dart';
import 'package:tana/navigation.dart';

class MainBenfits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_field
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffeeeff4),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/home.png',
                    fit: BoxFit.cover,
                    width: width,
                    height: height * 0.25,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Text(
              'Welcome',
              style: TextStyle(color: Colors.white,fontFamily: 'Roboto',),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Text(
              'Sai Bollineni',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'Roboto',),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.29,
            left: 20,
            right: 20,
            child: Container(
              height: height * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/id card1.jpeg',
                  fit: BoxFit.cover,
                  
                ),
              ),
            ),
          ),
          Positioned(
                    top: -50, 
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sai Bolineni',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 0.15),
                          Text(
                            'MEMBER ID   :   L-12345,''    ''STATE : VA',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          Positioned(
            top: height * 0.5,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.07),
                Text(
                  'Benefits Center',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0,
                  fontFamily: 'Roboto',),
                ),
                SizedBox(height: height * 0.02),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NationalBenfits()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(width * 0.8, height * 0.06),
                  ),
                  child: Text(
                    'National Benefits',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Roboto',),
                  ),
                ),
                SizedBox(height: height * 0.02),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegionalBenfits()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(width * 0.8, height * 0.06),
                  ),
                  child: Text(
                    'Regional Benefits',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Roboto',),
                  ),
                ),
                SizedBox(height: height * 0.02),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IndiaBenfits()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(width * 0.8, height * 0.06),
                  ),
                  child: Text(
                    'Global Benefits',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Roboto',),
                  ),
                ),
                SizedBox(height: height * 0.02),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 1,
      ),
      drawer: DrawerWidget(),
    );
  }
}
