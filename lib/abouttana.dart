import 'package:flutter/material.dart';
class AboutTana extends StatelessWidget {
   AboutTana({super.key});
  final TextEditingController_code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

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
  ), // Replace with your desired color
          child:Column(children: [ 
            SizedBox(height: Height*0.04,),
          SizedBox(
            height: Height * 0.10,
            width: Width * 1,
            child: Image.asset('assets/header.png',
                height: Height * 0.2, width: Width * 1),
          ),
        ],)),
        SizedBox(
          height: Height*0.05,

        ),
         Text(
                'About Tana',
                style: TextStyle(
                  fontSize:34, // Font size for the heading
                  fontWeight: FontWeight.bold, // Makes the text bold
                  color: Color.fromARGB(255, 243, 13, 13), // Text color
                ),
              ),
              SizedBox(
          height: Height*0.05,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for the text
            child: Text(
              'Our Mission: To identify and address social, cultural and educational NEEDS of North American Telugu Community in particular and Telugu people in general.',
              style: TextStyle(
                fontSize: 22, // Font size for the text
                color: Colors.black, // Text color
              ),
            ),
          ),
          SizedBox(
          height: Height*0.05,
        ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for the text
            child: Text(
              'Telugu Association of North America (or TANA, as it is well known) is the oldest and biggest Indo-American organization in North America.TANA was founded at a convention in New York in 1977 of Telugus from all over North America and was incorporated in 1978 as a not-for-profit organization.',
              style: TextStyle(
                fontSize: 20, // Font size for the text
                color: Colors.black, // Text color
                height: 1.5,
              ),
            ),
          ),
      ],
    ), 
    );
  }
}