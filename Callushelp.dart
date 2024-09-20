import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class CallUsHelp extends StatelessWidget {
  CallUsHelp({super.key});
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
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          // Header with background color
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
                          'Call Us For Help',
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
          SizedBox(height: height * 0.03), // Space between header and content
          
          // Table for displaying Name, Phone Number, State
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Table(
              border: TableBorder.all(
                color: Colors.grey, // Border color
                width: 1, // Border width
                borderRadius: BorderRadius.circular(4.0), // Rounded corners if needed
              ),
              columnWidths: const {
                0: FlexColumnWidth(2), // Adjust width ratios
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
              },
              children: const [
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 10, 10), // Header row color
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white, // Text color for header
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white, // Text color for header
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'State',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white, // Text color for header
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'John Doe',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '+1 234 567 890',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'California',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Jane Smith',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '+1 234 567 891',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Singapore',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 0,
      ),
      drawer: DrawerWidget(),
    );
  }
}
