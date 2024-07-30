import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/home.dart';
import 'package:tana/main.dart';
import 'package:tana/mainBenfits.dart';
import 'package:tana/navigation.dart';

class myBenfit extends StatelessWidget {
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
          Text('My Benefits',style: TextStyle(fontSize: 25),),
          SizedBox(
            height: Height * 0.04,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Width*0.1,
          ),
          Container(
            height: Height * 0.15,
            width: Width * 0.3,
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
              SizedBox(height: Height*0.05,child: Image.asset('assets/amazon.png'),),
              
              
              SizedBox(height: Height*0.02,),
              Text('50% off'),
              
            ],),
          ),
          SizedBox(
            width: Width*0.1,
          ),
          

          Container(
            height: Height * 0.15,
            width: Width * 0.3,
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
              SizedBox(height: Height*0.05,child: Image.asset('assets/Target.png'),),
              
              
              SizedBox(height: Height*0.02,),
              Text('50% off'),
              
            ],),
          ),
           SizedBox(
            width: Width*0.1,
          ),
         
        ],
      ),
      SizedBox(
            height: Height * 0.04,
          ),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Width*0.1,
          ),
          Container(
            height: Height * 0.15,
            width: Width * 0.3,
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
              SizedBox(height: Height*0.05,child: Image.asset('assets/theHome.png'),),
              
              
              SizedBox(height: Height*0.02,),
              Text('50% off'),
              
            ],),
          ),
          SizedBox(
            width: Width*0.1,
          ),
          

          Container(
            height: Height * 0.15,
            width: Width * 0.3,
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
              SizedBox(height: Height*0.05,child: Image.asset('assets/Walmart.png'),),
              
              
              SizedBox(height: Height*0.02,),
              Text('50% off'),
              
            ],),
          ),
           SizedBox(
            width: Width*0.1,
          ),
         
        ],
      ),
          ],
      ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
          
          selected: 2,
        ),
        drawer: DrawerWidget(),
    );
  }
}
