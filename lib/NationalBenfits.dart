import 'package:flutter/material.dart';

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
                    'Logo',
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
    return Table(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imagePath,
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  offer,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
            ),
            child: Column(
              children: [
                SizedBox(height: height * 0.04),
                SizedBox(
                  height: height * 0.10,
                  width: width,
                  child: Image.asset('assets/header.png', height: height * 0.2, width: width),
                ),
              ],
            ),
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
                    margin: EdgeInsets.all(16.0),
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
                            'Offers: 20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            'Offers: 15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            'Offers: 10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            'Offers: 25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            'Offers: 10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16.0),
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
                            'Offers: 20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            'Offers: 15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            'Offers: 10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            'Offers: 25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            'Offers: 10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16.0),
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
                            'Offers: 20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            'Offers: 15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            'Offers: 10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            'Offers: 25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            'Offers: 10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16.0),
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
                            'Offers: 20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            'Offers: 15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            'Offers: 10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            'Offers: 25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            'Offers: 10% off',
                            true,
                          ),
                        ],
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16.0),
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
                            'Offers: 20% off',
                            true,
                          ),
                          buildMenuButton(
                            'Amazon',
                            'assets/amazon.png',
                            'Address for Amazon',
                            'Offers: 15% off',
                            false,
                          ),
                          buildMenuButton(
                            'Costco',
                            'assets/Costco.png',
                            'Address for Costco',
                            'Offers: 10% off',
                            true,
                          ),
                          buildMenuButton(
                            'The Home Depot',
                            'assets/theHome.png',
                            'Address for The Home Depot',
                            'Offers: 25% off',
                            false,
                          ),
                          buildMenuButton(
                            'Target',
                            'assets/Target.png',
                            'Address for Target',
                            'Offers: 10% off',
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
    );
  }
}
