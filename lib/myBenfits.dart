import 'package:flutter/material.dart';
import 'package:tana/Benfits.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/navigation.dart';

class myBenfit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;

    // Method to build a table row with a stripe color
    Widget buildTableRow(String logoPath, String logoName, String address, String offer, bool isEven) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Benfit(title: logoName, imagePath: logoPath, address: address, offers: offer),
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
                    child: Icon(
                      Icons.delete,color: Colors.red,
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
                  buildTableRow('assets/amazon.png', 'Amazon', 'Address for Amazon', '50% off', true),
                  buildTableRow('assets/Target.png', 'Target', 'Address for Target', '50% off', false),
                  buildTableRow('assets/theHome.png', 'The Home Depot', 'Address for The Home Depot', '50% off', true),
                  buildTableRow('assets/Walmart.png', 'Walmart', 'Address for Walmart', '50% off', false),
                ],
              ),
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
