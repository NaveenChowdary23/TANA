import 'package:flutter/material.dart';
import 'package:tana/Drawer.dart';
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
      body:Stack(children: [ 
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Image.asset('assets/home.png'),
        ),
        Positioned(
          top: 40,
          
          left: 20,
          child: Text('Welcome',style: TextStyle(color: Colors.white),),
        ),
        Positioned(
          top: 60,
          
          left: 20,
          child: Text('Sai Bollineni',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        ),

        Positioned(
                    top: 40,
                    right: 20,
                    child: CircleAvatar(
                      radius: 30, // Adjust the radius as needed
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
                  ),
                  

      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Height * 0.25,
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
                    Center(child: Text("SAI BOLLINENI",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                    SizedBox(
                      height: Height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      
                      Text("Member ID : L-123456",style: TextStyle(fontSize: 25,),),
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
                  'Benefits Center',
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
                  child: Text('National Benefits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
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
                  child: Text('Regional Benefits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,),),
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
                  child: Text('Global Benefits',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                ),
          
          SizedBox(
            height: Height * 0.02,
          ),
          
        ],
      ),
      ],),
      bottomNavigationBar: const CustomBottomNavigationBar(
          
          selected: 1,
        ),
        drawer: DrawerWidget(),
       
    );
  }
}

