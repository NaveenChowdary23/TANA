import 'package:flutter/material.dart';
import 'package:tana/home.dart';
import 'package:tana/main.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double Height=MediaQuery.of(context).size.height;
    double Width=MediaQuery.of(context).size.width;

    return Scaffold(
      
      body: SingleChildScrollView(child:  Column(
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
            height: Height * 0.04,
          ),
          SizedBox(height: Height*0.05,),
           SizedBox(height: Height*0.1,),
              SizedBox(height: Height*0.05,),
              Text("Discount 30%",style: TextStyle(fontSize: 30),),
              SizedBox(height: Height*0.05,),
              Text("Valid till 26 Nov",style: TextStyle(fontSize: 30),),
              SizedBox(height: Height*0.05,),
              
            ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                     Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('Back'),
                ),
            SizedBox(
            height: Height * 0.08,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                        Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClientScreen()),
              );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('Benfits Home'),
                ),
                SizedBox(width: Width*0.05), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.4, Height*0.05), // Set the width and height of the button
                  ),
                  child: Text('My Benfits'),
                ),
              ],
            ),
          ),            
          ],
      ),
      )
    );
  }
}