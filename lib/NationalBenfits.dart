import 'package:flutter/material.dart';
import 'package:tana/Benfits.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/IndiaBenfits.dart';
import 'package:tana/ReginalBenfits.dart';
import 'package:tana/navigation.dart';

class NationalBenfits extends StatefulWidget {
  @override
  _NationalBenfitsBoxState createState() => _NationalBenfitsBoxState();
}

class _NationalBenfitsBoxState extends State<NationalBenfits> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;

  // Define the colors for stripes
  final Color evenRowColor = Colors.white;
  final Color oddRowColor = Colors.grey[200]!;
  

  // Method to build the header row
  Widget buildTableHeader() {
    return Table(
      border: TableBorder.all(color: const Color.fromARGB(255, 134, 132, 132), width: 0.4),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Business',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Offers',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Method to build a menu row with a stripe color
  Widget buildMenuButton(String title, String imagePath, String address, String offer, bool isEven) {
    return GestureDetector(
     onTap: () {
      // Perform your action here when the row is tapped
      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Benfit(title: title ,imagePath: imagePath,address: address,offers: offer,)),
                    );
      // You can navigate to another screen or perform other actions
      // Navigator.push(context, MaterialPageRoute(builder: (context) => YourNewScreen()));
    },
    child :Table(
      border: TableBorder.all(color: Colors.black, width: 0.4),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: isEven ? evenRowColor : oddRowColor,
          ),
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      imagePath,
                      height: 50,
                      width: 50, 
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFC20000)),
                    ),
                  ],
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  address,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  offer,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    String activeSection = 'National';
  
Widget buildHeaderButton(String title, Widget page, bool isActive) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isActive ? Colors.blue : Colors.white, // Blue if active, white otherwise
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (isActive)
                Positioned(
                  bottom: 23,
                  child: Container(
                    height: 2, // Line height
                    width: 100, // Adjust width as needed
                    color: Colors.blue, // Line color
                  ),
                ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xffeeeff4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)), // Adjust the radius as needed
            child: Container(
              color: Color.fromARGB(255, 245, 109, 88), // Header background color
              child: Column(
                children: [
                  SizedBox(height: height * 0.04),
                  Container(
                    height: height * 0.1,
                    color: Color.fromARGB(255, 245, 109, 88), // Header background color
                    child: Row(
                      children: [
                        buildHeaderButton('National', NationalBenfits(), activeSection == 'National'),
                        buildHeaderButton('Regional', RegionalBenfits(), activeSection == 'Regional'),
                        buildHeaderButton('Global', IndiaBenfits(), activeSection == 'Global'), // Adjust padding as needed
                        Image.asset(
                                'assets/logo.png',
                                height: 40,
                                width: 80,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
            ],
          ),
          SizedBox(height: height * 0.04),
          Row(
            children: [
              SizedBox(width: width * 0.1),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                width: width * 0.55,
                child: Center(
                  child: Text(
                    'National Benefits',
                    maxLines: null,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color(0xFF458F17),
                    ),
                  ),
                ),
              ),
              SizedBox(width: width * 0.1),
            ],
          ),
          SizedBox(
            height: height * 0.65,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal : 30.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Retail (5)'),
                          trailing: Icon(isExpanded1 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                          onTap: () {
                            setState(() {
                              isExpanded1 = !isExpanded1;
                            });
                          },
                        ),
                        if (isExpanded1) ...[
                          buildTableHeader(),
                          buildMenuButton(
                            'Walmart',
                            'assets/Walmart.png',
                            'Address for Walmart',
                            '20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            '15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            '10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            '25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            '10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal : 30.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Services (5)'),
                          trailing: Icon(isExpanded2 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                          onTap: () {
                            setState(() {
                              isExpanded2 = !isExpanded2;
                            });
                          },
                        ),
                        if (isExpanded2) ...[
                          buildTableHeader(),
                          buildMenuButton(
                            'Walmart',
                            'assets/Walmart.png',
                            'Address for Walmart',
                            '20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            '15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            '10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            '25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            '10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal :30.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Food (5)'),
                          trailing: Icon(isExpanded3 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                          onTap: () {
                            setState(() {
                              isExpanded3 = !isExpanded3;
                            });
                          },
                        ),
                        if (isExpanded3) ...[
                          buildTableHeader(),
                          buildMenuButton(
                            'Walmart',
                            'assets/Walmart.png',
                            'Address for Walmart',
                            '20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            '15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            '10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            '25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            '10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal : 30.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Travel (5)'),
                          trailing: Icon(isExpanded4 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                          onTap: () {
                            setState(() {
                              isExpanded4 = !isExpanded4;
                            });
                          },
                        ),
                        if (isExpanded4) ...[
                          buildTableHeader(),
                          buildMenuButton(
                            'Walmart',
                            'assets/Walmart.png',
                            'Address for Walmart',
                            '20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            '15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            '10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            '25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            '10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal : 30.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Others (5)'),
                          trailing: Icon(isExpanded5 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                          onTap: () {
                            setState(() {
                              isExpanded5 = !isExpanded5;
                            });
                          },
                        ),
                        if (isExpanded5) ...[
                          buildTableHeader(),
                          buildMenuButton(
                            'Walmart',
                            'assets/Walmart.png',
                            'Address for Walmart',
                            '20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            '15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            '10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            '25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            '10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  // Repeat for other sections
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
        selected: 1,
      ),
      drawer: DrawerWidget(),
    );
  }
}
