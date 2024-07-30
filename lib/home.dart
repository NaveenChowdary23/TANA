import 'package:flutter/material.dart';
import 'package:tana/navigation.dart';
import 'package:url_launcher/url_launcher.dart';



class ClientScreen extends StatelessWidget {
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
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
   bool isExpanded1 = false;
  bool isExpanded2 = false;
 


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
       Colors.white, // Left color
       Colors.white, // Right color
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  ), // Replace with your desired color
          child:Column(children: [ 
            SizedBox(height: Height*0.04,),           
                   
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
                  'Know more about Tana',
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
          SizedBox(width: Width*0.75,child: Center(child:
               Container(
          width: Width*0.8, // Adjust width as needed
          height: 50, // Adjust height as needed
          child: TextButton(
            onPressed: () {
              _launchURL('https://tana.org/about-tana');
            },
            style: ButtonStyle(

              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
              ),
            ),
            child: Text(
              'About TANA',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ),),),
        SizedBox(
            height: Height * 0.01,
          ),
            SizedBox(
            height: Height * 0.2,
            width: Width*0.8,
            child:SingleChildScrollView(child:  
            Column(children: [

            Card(
              color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Leadership'),
            
            trailing: Icon(isExpanded1 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                isExpanded1 = !isExpanded1;
              });
            },
          ),
          if (isExpanded1)
            Column(
              children: [
                Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),
Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),
Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),
Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),
              ],
            )
        ],
      ),
    ),
    Card(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Team Square'),
            trailing: Icon(isExpanded2 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                isExpanded2 = !isExpanded2;
              });
            },
          ),
          if (isExpanded2)
            Column(
              children: [
                Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),
Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),
Center(
  child: GestureDetector(
    onTap: () {
      _launchURL('https://tana.org/about-tana');
    },
    child: Text(
      'Visit Example',
      style: TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
    ),
  ),
),

               ],
            )
        ],
      ),
    ),
            ]
            )
            )
            ),
      
          SizedBox(
            height: Height * 0.02,
          ),
          
        ],
      ),
       
    );
  }
}


class SemiContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800), // Max width of the container
      padding: EdgeInsets.all(20), // Padding inside the container
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'This is a semi container example with centered content and a max-width.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}