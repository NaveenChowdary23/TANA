import 'package:flutter/material.dart';
import 'package:tana/Benfits.dart';
import 'package:tana/RegionalBenfitsSub.dart';
import 'package:tana/main.dart';
class RegionalBenfits extends StatefulWidget {
  @override
  _NationalBenfitsBoxState createState() => _NationalBenfitsBoxState();
}

class _NationalBenfitsBoxState extends State<RegionalBenfits> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;
  bool isExpanded7 = false;

  @override
  Widget build(BuildContext context) {
    final List<String> names = [
    "New York",
    "New jersey",
    "Capital",
    "middle East",
    "South East",
    "North Central",
    "South Central",
    "Region 8",
    "Region 9",
    "Region 10",
    "Region 11",
    "Region 12",
    "Region 13",
    "Region 14",
    "Region 15",

  ];
    
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
   Widget buildMenuButton(String title, Widget page, String imagePath) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      height: Height * 0.1,
      width: Width * 0.2,
      decoration: BoxDecoration(
        color: Color(0xFFF8AF03),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 45,
            width: 50,
          ),
          SizedBox(
            width: Width * 0.2,
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Color(0xFFC20000), // Replace with your desired color
            child: SizedBox(
              height: Height * 0.13,
              width: Width * 1,
              child: Image.asset('assets/header.png',
                  height: Height * 0.2, width: Width * 1),
            ),
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
                child: Center(child:  Text(
                  'Regional Level Benfits',
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 25.0, 
                    color: Color(0xFF458F17),// Adjust the font size as needed
                  ),
                ),)
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.02,
          ),
          SizedBox(
            height: Height * 0.68,
            child:SingleChildScrollView(child:  
            Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: names.map((name) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReginalBenfitsSub(name: name),
              ),
            );
          },
          child: Container(
            width: Width * 0.85,
            height: Height * 0.08,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: Width * 0.05),
                  SizedBox(width: Width * 0.05),
                  SizedBox(
                    height: Height * 0.02,
                    width: Width * 0.55,
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: Width * 0.02),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    ),
            ),
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
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClientScreen()),
              );
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
