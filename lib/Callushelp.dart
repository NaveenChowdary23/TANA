import 'package:flutter/material.dart';

class CallUsHelp extends StatelessWidget {
  CallUsHelp({super.key});
  final TextEditingController_codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffeeeff4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFC20000), // Left color
                  Color(0xFFA00000), // Right color
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: height * 0.04),
                SizedBox(
                  height: height * 0.10,
                  width: width * 1,
                  child: Image.asset('assets/header.png', height: height * 0.2, width: width * 1),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),

          // Row-like structure for displaying Name, Phone Number, State side by side
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust spacing between elements
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'John Doe',
                      ),
                      Text(
                        'John Doe',
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 16.0), // Adds space between "Name" and "Phone Number"
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        '+1 234 567 890',
                      ),
                      Text(
                        '+1 234 567 890',
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 18.0), // Adds space between "Phone Number" and "State"
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'State',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'California',
                      ),
                      Text(
                        'singapore',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
