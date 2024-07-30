import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class Benfit extends StatelessWidget {
  final String title;
  final String imagePath;

  Benfit({required this.title, required this.imagePath});
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
            height: Height * 0.05,
          ),
          Row(children: [
              SizedBox(width: Width*0.1,),
              IconButton(onPressed: () {
                    // Add your button logic here
                     Navigator.pop(context);
                  }, icon: 
              Icon(Icons.arrow_back_ios))
            ],),
          SizedBox(height: Height*0.1,),
          Center(child: 
          Container(
            height: Height * 0.3,
            width: Width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0), // Rounded corners
              border: Border.all(
                color: Colors.blue, // Border color
                width: 2.0, // Border width
              ),
            ),
            child: Column(children: [
              SizedBox(height: Height*0.02,),
              SizedBox(height: Height*0.1,child: Image.asset(imagePath),),
              
              SizedBox(height: Height*0.04,),
              Text(title),
              SizedBox(height: Height*0.04,),
              Text('50% off'),
              
            ],),
          ),
          ),          
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
