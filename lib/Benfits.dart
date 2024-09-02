import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class Benfit extends StatelessWidget {
  final String title;
  final String imagePath;
  final String address;
  final String offers;

  Benfit({
    required this.title,
    required this.imagePath,
    required this.address,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header with background color and rounded corners
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: height * 0.05),
                color: Color.fromARGB(255, 245, 109, 88), // Background color of the header
              ),
            ),
            SizedBox(height: height * 0.03), // Add some space after the header
            Row(
              children: [
                SizedBox(width: width * 0.1),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            SizedBox(
              width: width * 0.8,
              child: Center(
                child: Text(
                  'Benefit Detail',
                  maxLines: null,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC20000),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            Center(
              child: Container(
                height: height * 0.4,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.03),
                    SizedBox(
                      height: height * 0.1,
                      child: Image.asset(imagePath),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      address,
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      offers,
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 241, 10, 10),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.08), // Add space between the container and button
            ElevatedButton(
              onPressed: () {
                // Define your button action here
                print('ElevatedButton pressed');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 245, 109, 88), // Text color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('Add to My Benifits'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 1,
      ),
      drawer: DrawerWidget(),
    );
  }
}
