import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header Container with the specified color
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 50.0),
                color: Color.fromARGB(255, 245, 109, 88),
              ),
            ),
            SizedBox(height: height * 0.04),

            // Profile Text at the top of the body
            Text(
              'Profile',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                SizedBox(width: width * 0.6),
                IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    size: 20,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Add your edit button functionality here
                  },
                ),
              ],
            ),
            CircleAvatar(
              radius: 50, // Adjust the radius as needed
              backgroundColor: Colors.grey.shade200, // Background color while loading
              child: ClipOval(
                child: Icon(
                  Icons.person,
                  size: 50, // Adjust the size to fit the CircleAvatar radius
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Text(
              'SAI BOLLINENI',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: height * 0.04),
            Text(
              'sai.bollineni@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: height * 0.04),
            Text(
              '+1 9876543210',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: height * 0.04),
            Text(
              'Salt Fork Dr, Fort Worth, \nTX 76179, USA',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center, // Center-align the address
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 3,
      ),
      drawer: DrawerWidget(),
    );
  }
}
