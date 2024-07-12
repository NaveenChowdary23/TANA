import 'package:flutter/material.dart';
import 'package:tana/main.dart';

class Benfit extends StatelessWidget {
  final String title;
  final String imagePath;

  Benfit({required this.title, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    double Height=MediaQuery.of(context).size.height;
    double Width=MediaQuery.of(context).size.width;

    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Color(0xFFC20000), // Replace with your desired color
            child: SizedBox(
              height: Height * 0.13,
              width: Width * 1,
              child: Image.asset('assets/header.png',
                  height: Height * 0.2, width: Width * 1),
            ),
          ),
          SizedBox(
            height: Height * 0.04,
          ),
          SizedBox(height: Height*0.05,),
          Center(child: 
              Image.asset(imagePath,scale: 4,),),
           SizedBox(height: Height*0.1,),
          Center(child: 
              Text(title,style: TextStyle(fontSize: 30),)),
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
    );
  }
}
