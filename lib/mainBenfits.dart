import 'package:flutter/material.dart';
import 'package:tana/IndiaBenfits.dart';
import 'package:tana/NationalBenfits.dart';
import 'package:tana/ReginalBenfits.dart';
import 'package:tana/navigation.dart';



class MainBenfits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


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
            height: Height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'Welcome Naveen',
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 16.0, // Adjust the font size as needed
                  ),
                ),
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'TANA ID CARD',
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 16.0, // Adjust the font size as needed
                  ),
                ),
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Height * 0.25,
                width: Width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFFddc000),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 3), // Offset in the x and y direction
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                height: Height * 0.1,
                width: Width * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xFFf95554),
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Row(
                  children: [
                    SizedBox(width: Width*0.05,),
                    Image.asset('assets/main.png'),
                    SizedBox(width: Width*0.05,),
                    Text('TANA',style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                    SizedBox(width: Width*0.05,),
                    Image.asset('assets/sub.png'),
                    
                    
                  ]
                )
                    ),
                    SizedBox(
                      height: Height * 0.02,
                    ),
                    Center(child: Text("Naveen Chowdary Maguluri",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                    SizedBox(
                      height: Height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                      Text("Member ID : L-123456",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                     
                    
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: Height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Text(
                  'Benfit Center',
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 16.0, // Adjust the font size as needed
                  ),
                ),
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.02,
          ),
                ElevatedButton(
                  
                  onPressed: () {
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NationalBenfits()),
              );
                    // Add your button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.8, Height*0.06), // Set the width and height of the button
                  ),
                  child: Text('National Level Benfits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                ),
                SizedBox(height: Height*0.02), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegionalBenfits()),
              );
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.8, Height*0.06), // Set the width and height of the button
                  ),
                  child: Text('Regional Benfits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),),
                ),
                SizedBox(height: Height*0.02), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndiaBenfits()),
              );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                         Size(Width*0.8, Height*0.06), // Set the width and height of the button
                  ),
                  child: Text('Global Benfits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                ),
          
          SizedBox(
            height: Height * 0.02,
          ),
          
        ],
      ),
       bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

