import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

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
          
          Text('Profile',style: TextStyle(fontSize: 25),),
          SizedBox(
            height: Height * 0.04,
          ), 
          Row(children: [
            SizedBox(width: Width*0.6,
            ),
            IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 20,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        // Add your edit button functionality here
                      },
                    ),
          ],),
          
            CircleAvatar(
                      radius: 50, // Adjust the radius as needed
                      backgroundColor: Colors
                          .grey.shade200, // Background color while loading
                      child: ClipOval(
                        child: Icon(
                              Icons.person,
                              size:
                                  50, // Adjust the size to fit the CircleAvatar radius
                              color: Colors.grey,
                            )
                      ),
                    ), 
          SizedBox(
            height: Height * 0.04,
          ),
          Text('SAI BOLLINENI',style: TextStyle(fontSize: 20),),
          SizedBox(
            height: Height * 0.04,
          ),
          Text('sai.bollineni@gmail.com',style: TextStyle(fontSize: 20),),
          SizedBox(
            height: Height * 0.04,
          ),
          Text('+1 9876543210',style: TextStyle(fontSize: 20),),
          SizedBox(
            height: Height * 0.04,
          ),
          Text('Salt Fork Dr, Fort Worth, \nTX 76179, USA',style: TextStyle(fontSize: 20),),
                    

          ],
      ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
          
          selected: 3,
        ),
        drawer: DrawerWidget(),
    );
  }
}
