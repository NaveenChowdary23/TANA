import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class Teamsquare extends StatelessWidget {
  Teamsquare({super.key});
  final TextEditingController_codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffeeeff4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Header with background color
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),

          ),
          child: Container(
            width: double.infinity,
            color: Color.fromARGB(255, 245, 109, 88), // Background color for the header
            padding: EdgeInsets.symmetric(vertical: height * 0.07),
          ),
          ),
          SizedBox(height: height * 0.05),
          const Text(
            'About TEAM SQUARE',
            style: TextStyle(
              fontSize: 34, // Font size for the heading
              fontWeight: FontWeight.bold, // Makes the text bold
              color: Color.fromARGB(255, 243, 13, 13), // Text color
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0), // Horizontal padding for the text
            child: const Text(
              'TANA Emergency Assistance Management Team (TEAM Square)',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 22, // Font size for the text
                color: Colors.black, // Text color
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SizedBox(height: height * 0.03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0), // Horizontal padding for the text
            child: const Text(
              'TEAM Square was established by TANA on October 6, 2008, as another service arm to the community, specifically to aid Telugu families in North America caught in an emergent or catastrophic situation. TANA has established a network of about 400 volunteers across all regions of the USA and Canada that can be contacted in an emergency. These volunteers contact the victim and coordinate the necessary relief activities.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20, // Font size for the text
                fontFamily: 'Roboto',
                color: Colors.black, // Text color
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 2,
      ),
      drawer: DrawerWidget(),
    );
  }
}
