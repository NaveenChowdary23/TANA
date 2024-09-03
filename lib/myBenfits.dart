import 'package:flutter/material.dart';
import 'package:tana/Benfits.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class MyBenefit extends StatefulWidget {
  @override
  _MyBenefitState createState() => _MyBenefitState();
}

class _MyBenefitState extends State<MyBenefit> {
  // List of benefits (with hidden texts added)
  List<Map<String, String>> benefits = [
    {
      'logoPath': 'assets/amazon.png',
      'logoName': 'Amazon',
      'address': '1250, Bald Eagle st, VA 20152',
      'offer': '50% off',
      'hiddenText1': 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      'hiddenText2': 'Offer code : TANA2024',
      'hiddenText3': 'Valid Until: Dec 2024',
    },
    {
      'logoPath': 'assets/Target.png',
      'logoName': 'Target',
      'address': '1250, Bald Eagle st, VA 20152',
      'offer': '50% off',
      'hiddenText1': 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      'hiddenText2': 'Offer code : TANA2024',
      'hiddenText3': 'Valid Until: Dec 2024',
    },
    {
      'logoPath': 'assets/theHome.png',
      'logoName': 'The Home Depot',
      'address': '1250, Bald Eagle st, VA 20152',
      'offer': '50% off',
      'hiddenText1': 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      'hiddenText2': 'Offer code : TANA2024',
      'hiddenText3': 'Valid Until: Dec 2024',
    },
    {
      'logoPath': 'assets/Walmart.png',
      'logoName': 'Walmart',
      'address': '1250, Bald Eagle st, VA 20152',
      'offer': '50% off',
      'hiddenText1': 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      'hiddenText2': 'Offer code : TANA2024',
      'hiddenText3': 'Valid Until: Dec 2024',
    },
  ];

  // Method to handle delete action
  void _deleteBenefit(int index) {
    setState(() {
      benefits.removeAt(index);
    });
  }

  // Method to build a table row with a stripe color
  Widget buildTableRow(int index, String logoPath, String logoName, String address, String offer, bool isEven) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Benfit(
              title: logoName,
              imagePath: logoPath,
              address: address,
              offers: offer,
              hiddenText1: benefits[index]['hiddenText1']!,
              hiddenText2: benefits[index]['hiddenText2']!,
              hiddenText3: benefits[index]['hiddenText3']!,
            ),
          ),
        );
      },
      child: Table(
        border: TableBorder.all(color: Colors.black, width: 0.4),
        children: [
          TableRow(
            decoration: BoxDecoration(
              color: isEven ? Colors.white : Colors.grey[200],
            ),
            children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        logoPath,
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        logoName,
                        style: TextStyle(fontWeight: FontWeight.bold),
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
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _showDeleteConfirmationDialog(index);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Method to build the table header row
  Widget buildTableHeader() {
    return Table(
      border: TableBorder.all(color: Colors.black, width: 0.4),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: Colors.blueGrey[100],
          ),
          children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Logo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Offer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Delete',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Method to show confirmation dialog before deleting
  void _showDeleteConfirmationDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Deletion'),
          content: Text('Are you sure you want to delete this benefit?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _deleteBenefit(index);
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header Container without text
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 50.0),
                color: Color.fromARGB(255, 245, 109, 88),
              ),
            ),
            SizedBox(height: height * 0.04),

            // "My Benefits" Text added in the body
            Text(
              'My Favourite Benefits',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.04),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  buildTableHeader(),
                  // Generate rows dynamically
                  for (int i = 0; i < benefits.length; i++)
                    buildTableRow(
                      i,
                      benefits[i]['logoPath']!,
                      benefits[i]['logoName']!,
                      benefits[i]['address']!,
                      benefits[i]['offer']!,
                      i.isEven,
                    ),
                ],
              ),
            ),
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
