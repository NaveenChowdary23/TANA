import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class BoardOfDirectors extends StatelessWidget {
  BoardOfDirectors({super.key});
  final TextEditingController_code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffeeeff4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            // Header with background color
            child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 245, 109, 88), // Background color for the header
              padding: EdgeInsets.symmetric(vertical: height * 0.07),
            ),
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding on the left and right
              child: const Text(
                'Board Of Directors',
                style: TextStyle(
                  fontSize: 34, // Font size for the heading
                  fontWeight: FontWeight.bold, // Makes the text bold
                  color: Color.fromARGB(255, 243, 13, 13),
                  fontFamily: 'Roboto', // Text color
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: height * 0.01),
            // Container for Photo and Details 1
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0), // Adjust margin as needed
              padding: const EdgeInsets.all(16.0), // Increased padding
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Photo
                  Center(
                    child: CircleAvatar(
                      radius: width * 0.20, // Adjust radius as needed
                      backgroundImage: const AssetImage('assets/photo.jpeg'),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  // Details
                  const Text(
                    'Name: Suresh',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Position: CEO',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Email: example@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Phone: +919050456789',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
            // Container for Photo and Details 2
            SizedBox(height: height * 0.03),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0), // Adjust margin as needed
              padding: const EdgeInsets.all(16.0), // Increased padding
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Photo
                  Center(
                    child: CircleAvatar(
                      radius: width * 0.20, // Adjust radius as needed
                      backgroundImage: const AssetImage('assets/photo.jpeg'),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  // Details
                  const Text(
                    'Name: Suresh',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Position: CEO',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Email: example@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    'Phone: +919050456789',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 0,
      ),
      drawer: DrawerWidget(),
    );
  }
}
