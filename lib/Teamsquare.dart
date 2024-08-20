import 'package:flutter/material.dart';
class Teamsquare extends StatelessWidget {
   Teamsquare({super.key});
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
                'About TEAM SQUARE',
                style: TextStyle(
                  fontSize:34, // Font size for the heading
                  fontWeight: FontWeight.bold, // Makes the text bold
                  color: Color.fromARGB(255, 243, 13, 13), // Text color
                ),
              ),
              SizedBox(
          height: Height*0.02,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for the text
            child: Text(
              'TANA Emergency Assistance Management Team (TEAM Square)',
              style: TextStyle(
                fontSize: 22, // Font size for the text
                color: Colors.black, // Text color
              ),
            ),
          ),
          SizedBox(
          height: Height*0.03,
        ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for the text
            child: Text(
              'TEAM Square was established by TANA on October 6, 2008, as another service arm to the community, specifically to aid Telugu families in North America caught in an emergent or catastrophic situation. TANA has established a network of about 400 volunteers across all regions of the USA and Canada that can be contacted in an emergency. These volunteers contact the victim and coordinate the necessary relief activities.',
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