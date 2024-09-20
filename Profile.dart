import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Header Container with Profile Text and Logo
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Container(
              height: height * 0.1,
              width: double.infinity,
              color: const Color.fromARGB(255, 245, 109, 88),
              child: const Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),

          // Expanded Container for the rest of the content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                  // Profile Details Container
                  Container(
                    width: width * 0.93,
                    color: Colors.transparent, // White background color
                    padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15), // Add radius here
                          border: Border.all(
                            color: Colors.grey.shade300, // Border color
                            width: 1, // Border width
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.03),
                          child: Row(
                            children: [
                              // Profile Avatar
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey.shade200,
                                child: const Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: width * 0.25), // Space between avatar and text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Sai Bolineni',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.0),
                                  const Text(
                                    'L-123456',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.0),
                                  const Text(
                                    'Type : LIFE',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),

                  // Contact Information Container
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Container(
                      width: width * 0.9,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email: sai.bollineni@gmail.com',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            'Phone: +1 9876543210',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: height * 0.01),
                          const Text(
                            'Spouse: Lorem Ipsum',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.04),

                  // ID Card Container
                  Center(
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(
                              'assets/id card1.jpeg',
                              fit: BoxFit.cover,
                            ),
                            const Positioned(
                              top: 85,
                              left: 10,
                              right: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                  SizedBox(height: 5),
                                  Text(
                                    'MEMBER ID   :   L-12345    STATE : VA',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.04),

                  // Address Container
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Container(
                      width: width * 0.9,
                      padding: EdgeInsets.all(width * 0.05),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Text(
                        'Address on File:''                          '' 1234 Example Lane, Example City, EX 12345',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 4,
      ),
      drawer: DrawerWidget(),
    );
  }
}
