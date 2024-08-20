import 'package:flutter/material.dart';

class ExecutiveCommitte extends StatelessWidget {
  ExecutiveCommitte({super.key});
  final TextEditingController_code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffeeeff4),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar for the fixed header
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
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
                child: Center(
                  child: Image.asset(
                    'assets/header.png',
                    height: height * 0.10,
                    width: width * 1,
                  ),
                ),
              ),
            ),
          ),
          // SliverList for the scrollable content
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: height * 0.04),
                Text(
                  'Executive Board Members',
                  style: TextStyle(
                    fontSize: 34, // Font size for the heading
                    fontWeight: FontWeight.bold, // Makes the text bold
                    color: Color.fromARGB(255, 243, 13, 13), // Text color
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.02),
                // Container for Photo and Details 1
                Container(
                  margin: EdgeInsets.all(16.0), // Adjust margin as needed
                  padding: EdgeInsets.all(16.0), // Adjust padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Shadow position
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
                          backgroundImage: AssetImage('assets/photo.png'),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      // Details
                      Text(
                        'Name: Suresh',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Position: CEO',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Email: example@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Phone: +919050456789',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                // Container for Photo and Details 2
                Container(
                  margin: EdgeInsets.all(16.0), // Adjust margin as needed
                  padding: EdgeInsets.all(16.0), // Adjust padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Shadow position
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
                          backgroundImage: AssetImage('assets/photo.png'),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      // Details
                      Text(
                        'Name: Suresh',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Position: CEO',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Email: example@gmail.com',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Phone: +919050456789',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
