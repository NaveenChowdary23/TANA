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
              columnWidths: {
                0: const FlexColumnWidth(2), // Adjust width ratios
                1: const FlexColumnWidth(2),
                2: const FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 10, 10), // Header row color
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Name',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white, // Text color for header
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Phone Number',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.white, // Text color for header
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'State',
                        style: const TextStyle(
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'John Doe',
                        style: const TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '+1 234 567 890',
                        style: const TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'California',
                        style: const TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Jane Smith',
                        style: const TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '+1 234 567 891',
                        style: const TextStyle(fontFamily: 'Roboto'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Singapore',
                        style: const TextStyle(fontFamily: 'Roboto'),
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
        selected: 1,
      ),
      drawer: DrawerWidget(),
    );
  }
}
