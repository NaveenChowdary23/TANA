import 'package:flutter/material.dart';
import 'package:tana/Benfits.dart';
import 'package:tana/main.dart';
class ReginalBenfitsSub extends StatefulWidget {
  final String name;

  ReginalBenfitsSub({required this.name});

  @override
  _NationalBenfitsBoxState createState() => _NationalBenfitsBoxState();
}

class _NationalBenfitsBoxState extends State<ReginalBenfitsSub> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;
  bool isExpanded7 = false;
  

  @override
  Widget build(BuildContext context) {
    
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
   Widget buildMenuButton(String title, Widget page, String imagePath) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      height: Height * 0.1,
      width: Width * 0.2,
      decoration: BoxDecoration(
        color: Color(0xFFF8AF03),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 45,
            width: 50,
          ),
          SizedBox(
            width: Width * 0.2,
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


    return Scaffold(
      body: SingleChildScrollView(child: 
      Column(
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
          Row(
            children: [
              SizedBox(
                width: Width * 0.1,
              ),
              SizedBox(
                width: Width * 0.8, // Adjust the width as needed
                child: Center(child:  Text(
                  widget.name,
                  maxLines: null, // Allows the text to wrap to a new line
                  overflow:
                      TextOverflow.visible, // Ensures the text is fully visible
                  style: TextStyle(
                    fontSize: 25.0, 
                    color: Color(0xFF458F17),// Adjust the font size as needed
                  ),
                ),)
              ),
              SizedBox(
                width: Width * 0.1,
              ),
            ],
          ),
          SizedBox(
            height: Height * 0.6,
            child:SingleChildScrollView(child:  
            Column(children: [

            Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Retail    (5)'),
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
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('Walmart', Benfit(title:'Walmart',imagePath: 'assets/Walmart.png'),'assets/Walmart.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Amazon', Benfit(title:'Amazon' ,imagePath: 'assets/amazon.png',),'assets/amazon.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Costco', Benfit(title: 'Costco',imagePath: 'assets/Costco.png',),'assets/Costco.png'),
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('The Home Depot', Benfit(title: 'The Home Depot',imagePath: 'assets/theHome.png',),'assets/theHome.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Target', Benfit(title:'Target' ,imagePath: 'assets/Target.png',),'assets/Target.png'),
               
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
              
              ],
            )
        ],
      ),
    ),
    Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Services    (5)'),
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
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('Walmart', Benfit(title:'Walmart',imagePath: 'assets/Walmart.png'),'assets/Walmart.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Amazon', Benfit(title:'Amazon' ,imagePath: 'assets/amazon.png',),'assets/amazon.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Costco', Benfit(title: 'Costco',imagePath: 'assets/Costco.png',),'assets/Costco.png'),
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('The Home Depot', Benfit(title: 'The Home Depot',imagePath: 'assets/theHome.png',),'assets/theHome.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Target', Benfit(title:'Target' ,imagePath: 'assets/Target.png',),'assets/Target.png'),
               
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
              
              ],
            )
        ],
      ),
    ),
    Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Food    (5)'),
            trailing: Icon(isExpanded3 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                isExpanded3 = !isExpanded3;
              });
            },
          ),
          if (isExpanded3)
            Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('Walmart', Benfit(title:'Walmart',imagePath: 'assets/Walmart.png'),'assets/Walmart.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Amazon', Benfit(title:'Amazon' ,imagePath: 'assets/amazon.png',),'assets/amazon.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Costco', Benfit(title: 'Costco',imagePath: 'assets/Costco.png',),'assets/Costco.png'),
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('The Home Depot', Benfit(title: 'The Home Depot',imagePath: 'assets/theHome.png',),'assets/theHome.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Target', Benfit(title:'Target' ,imagePath: 'assets/Target.png',),'assets/Target.png'),
               
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
              
              ],
            )
        ],
      ),
    ),
    Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Travel    (5)'),
            trailing: Icon(isExpanded4 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                isExpanded4 = !isExpanded4;
              });
            },
          ),
          if (isExpanded4)
            Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('Walmart', Benfit(title:'Walmart',imagePath: 'assets/Walmart.png'),'assets/Walmart.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Amazon', Benfit(title:'Amazon' ,imagePath: 'assets/amazon.png',),'assets/amazon.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Costco', Benfit(title: 'Costco',imagePath: 'assets/Costco.png',),'assets/Costco.png'),
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('The Home Depot', Benfit(title: 'The Home Depot',imagePath: 'assets/theHome.png',),'assets/theHome.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Target', Benfit(title:'Target' ,imagePath: 'assets/Target.png',),'assets/Target.png'),
               
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
              
              ],
            )
        ],
      ),
    ),
    Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Others    (5)'),
            trailing: Icon(isExpanded5 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                isExpanded5 = !isExpanded5;
              });
            },
          ),
          if (isExpanded5)
            Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('Walmart', Benfit(title:'Walmart',imagePath: 'assets/Walmart.png'),'assets/Walmart.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Amazon', Benfit(title:'Amazon' ,imagePath: 'assets/amazon.png',),'assets/amazon.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Costco', Benfit(title: 'Costco',imagePath: 'assets/Costco.png',),'assets/Costco.png'),
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildMenuButton('The Home Depot', Benfit(title: 'The Home Depot',imagePath: 'assets/theHome.png',),'assets/theHome.png'),
                SizedBox(width: Width * 0.1),
                buildMenuButton('Target', Benfit(title:'Target' ,imagePath: 'assets/Target.png',),'assets/Target.png'),
               
              ],
            ),
            SizedBox(
            height: Height * 0.02,),
              
              ],
            )
        ],
      ),
    ),
            ],),
            ),
          ),
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
            height: Height * 0.02,
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
