import 'package:flutter/material.dart';

// Assuming these imports are correct and available
import 'package:tana/navigation.dart'; // Replace with actual path if necessary
import 'package:tana/Drawer.dart'; // Replace with actual path if necessary

class AboutTana extends StatelessWidget {
  AboutTana({super.key});
  final TextEditingController_codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffeeeff4),
      body: Column(
        children: [
          // Header with background color and text
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                color: const Color.fromARGB(255, 245, 109, 88),
                child: Row(
                  children: [
                    // Spacer to push the text to the center
                    Expanded(
                      child: Center(
                        child: Text(
                          'About Tana',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    // Logo Image on the right
                     Image.asset(
                        'assets/logo.png', // Replace with your logo path
                        height: 40, // Adjust size as needed
                        width: 40,  // Adjust size as needed
                      ),
                  ],
                ),
              ),
          ),
          SizedBox(height: height * 0.05),
          // Body content
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0), // Horizontal padding for the text
            child: Text(
              'Our Mission: To identify and address social, cultural and educational NEEDS of North American Telugu Community in particular and Telugu people in general.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20, // Font size for the text
                color: Colors.black, // Text color
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SizedBox(height: height * 0.04),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0), // Horizontal padding for the text
            child: Text(
              'Telugu Association of North America (or TANA, as it is well known) is the oldest and biggest Indo-American organization in North America. TANA was founded at a convention in New York in 1977 of Telugus from all over North America and was incorporated in 1978 as a not-for-profit organization.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20, // Font size for the text
                color: Colors.black, // Text color
                height: 1.5,
              ),
            ),
          ),
          // SizedBox at the bottom to add spacing before the bottomNavigationBar
          SizedBox(height: height * 0.0),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 0,
      ),
      drawer: DrawerWidget(),
    );
  }
}
