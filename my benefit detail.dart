import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart'; // Make sure this import is correct
import 'package:tana/navigation.dart'; // Make sure this import is correct

class myBenfitdetail extends StatelessWidget {
  final String title;
  final String imagePath;
  final String address;
  final String offers;
  final String hiddenText1;
  final String hiddenText2;
  final String hiddenText3; // Include this in the constructor

  const myBenfitdetail({super.key, 
    required this.title,
    required this.imagePath,
    required this.address,
    required this.offers,
    required this.hiddenText1,
    required this.hiddenText2,
    required this.hiddenText3, // Initialize hiddenText
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 109, 88),
        title: const Text('Benefit Detail', style: TextStyle(color: Color.fromARGB(255, 244, 241, 241))),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.15), // Space after AppBar
            Center(
              child: Container(
                height: height * 0.43,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.01),
                    Image.asset(imagePath, height: height * 0.07),
                    SizedBox(height: height * 0.01),
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      address,
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      offers,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 241, 10, 10),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      hiddenText1,
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]), // Adjust style as needed
                      textAlign: TextAlign.center, // Center align text
                    ),
                    SizedBox(height: height * 0.04), // Space below hiddenText1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            hiddenText2,
                            style: TextStyle(fontSize: 16, color: Colors.grey[700]), // Adjust style as needed
                            textAlign: TextAlign.center, // Center align text
                          ),
                        ),
                        SizedBox(width: width * 0.05), // Space between hiddenText2 and hiddenText3
                        Expanded(
                          child: Text(
                            hiddenText3,
                            style: TextStyle(fontSize: 16, color: Colors.grey[700]), // Adjust style as needed
                            textAlign: TextAlign.center, // Center align text
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.08), // Add space between the container and button
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
