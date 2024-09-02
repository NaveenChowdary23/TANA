import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/IndiaBenfits.dart';
import 'package:tana/NationalBenfits.dart';
import 'package:tana/RegionalBenfitsSub.dart';
import 'package:tana/navigation.dart';

class RegionalBenfits extends StatefulWidget {
  @override
  _RegionalBenfitsState createState() => _RegionalBenfitsState();
}

class _RegionalBenfitsState extends State<RegionalBenfits> {
  @override
  Widget build(BuildContext context) {
    final List<String> names = [
      "New York",
      "New Jersey",
      "Capital",
      "Middle East",
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

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // Define the active section
    String activeSection = 'Regional'; // Update this as needed

    Widget buildHeaderButton(String title, Widget page, bool isActive) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isActive ? Colors.blue : Colors.white, // Blue if active, white otherwise
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (isActive)
                Positioned(
                  bottom: 23,
                  child: Container(
                    height: 2, // Line height
                    width: 100, // Adjust width as needed
                    color: Colors.blue, // Line color
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
          ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)), // Adjust the radius as needed
            child: Container(
              color: Color.fromARGB(255, 245, 109, 88), // Header background color
              child: Column(
                children: [
                  SizedBox(height: height * 0.04),
                  Container(
                    height: height * 0.1,
                    color: Color.fromARGB(255, 245, 109, 88), // Header background color
                    child: Row(
                      children: [
                        buildHeaderButton('National', NationalBenfits(), activeSection == 'National'),
                        buildHeaderButton('Regional', RegionalBenfits(), activeSection == 'Regional'),
                        buildHeaderButton('Global', IndiaBenfits(), activeSection == 'Global'),
                        Image.asset(
                                'assets/logo.png',
                                height: 40,
                                width: 80,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Row(
            children: [
              SizedBox(
                width: width * 0.1,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                width: width * 0.65,
                child: Center(
                  child: Text(
                    'Regional Benefits',
                    maxLines: null,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF458F17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.1,
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          SizedBox(
            height: height * 0.65,
            child: SingleChildScrollView(
              child: Column(
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
                      width: width * 0.85,
                      height: height * 0.08,
                      margin: EdgeInsets.only(
                        bottom: 16,
                        left: 40.0,
                        right: 40.0,
                      ),
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
                            SizedBox(width: width * 0.05),
                            SizedBox(width: width * 0.05),
                            SizedBox(
                              height: height * 0.02,
                              width: width * 0.55,
                              child: Text(
                                name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(width: width * 0.02),
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
          SizedBox(height: height * 0.0),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 1,
      ),
      drawer: DrawerWidget(),
    );
  }
}
