import 'package:flutter/material.dart';
import 'package:tana/Benfits.dart';
import 'package:tana/Drawer.dart';
import 'package:tana/IndiaBenfits.dart';
import 'package:tana/ReginalBenfits.dart';
import 'package:tana/navigation.dart';

// Item model to hold data for each menu button
class MenuItem {
  final String title;
  final String imagePath;
  final String address;
  final String offer;
  final String hiddenText1;
  final String hiddenText2;
  final String hiddenText3;
  

  MenuItem({
    required this.title,
    required this.imagePath,
    required this.address,
    required this.offer,
    required this.hiddenText1,
    required this.hiddenText2,
    required this.hiddenText3,
  });
}

class NationalBenfits extends StatefulWidget {
  const NationalBenfits({super.key});

  @override
  _NationalBenfitsBoxState createState() => _NationalBenfitsBoxState();
}

class _NationalBenfitsBoxState extends State<NationalBenfits> {
  // Define the colors for stripes
  final Color evenRowColor = Colors.white;
  final Color oddRowColor = Colors.grey[200]!;

  // Expandable section states
  bool isExpandedRetail = false;
  bool isExpandedServices = false;
  bool isExpandedShopping = false;
  bool isExpandedGroceries = false;
  bool isExpandedOthers = false;

  // List of menu items for each category
  final List<MenuItem> retailItems = [
    MenuItem(
      title: 'Walmart',
      imagePath: 'assets/Walmart.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '20% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Amazon',
      imagePath: 'assets/amazon.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Costco',
      imagePath: 'assets/Costco.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'The Home Depot',
      imagePath: 'assets/theHome.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Target',
      imagePath: 'assets/Target.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    // Add more items here
  ];

  final List<MenuItem> servicesItems = [
    MenuItem(
      title: 'Walmart',
      imagePath: 'assets/Walmart.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '20% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Amazon',
      imagePath: 'assets/amazon.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Costco',
      imagePath: 'assets/Costco.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'The Home Depot',
      imagePath: 'assets/theHome.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Target',
      imagePath: 'assets/Target.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    // Add more items here
  ];

  final List<MenuItem> shoppingItems = [
    MenuItem(
      title: 'Walmart',
      imagePath: 'assets/Walmart.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '20% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Amazon',
      imagePath: 'assets/amazon.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Costco',
      imagePath: 'assets/Costco.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'The Home Depot',
      imagePath: 'assets/theHome.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Target',
      imagePath: 'assets/Target.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    // Add more items here
  ];

  final List<MenuItem> groceriesItems = [
    MenuItem(
      title: 'Walmart',
      imagePath: 'assets/Walmart.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '20% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Amazon',
      imagePath: 'assets/amazon.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Costco',
      imagePath: 'assets/Costco.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'The Home Depot',
      imagePath: 'assets/theHome.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Target',
      imagePath: 'assets/Target.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    // Add more items here
  ];

  final List<MenuItem> othersItems = [
    MenuItem(
      title: 'Walmart',
      imagePath: 'assets/Walmart.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '20% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Amazon',
      imagePath: 'assets/amazon.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Costco',
      imagePath: 'assets/Costco.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'The Home Depot',
      imagePath: 'assets/theHome.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    MenuItem(
      title: 'Target',
      imagePath: 'assets/Target.png',
      address: '1250, Bald Eagle st, VA 20152',
      offer: '15% off',
      hiddenText1: 'offer valid only on catering.discount applies to cash payment.this discount not applied on dine-in and online orders',
      hiddenText2: 'Offer code : TANA2024',
      hiddenText3: 'Valid Until: Dec 2024',
    ),
    // Add more items here
  ];

  // Method to build the header row
  Widget buildTableHeader() {
    return Table(
      border: TableBorder.all(color: const Color.fromARGB(255, 134, 132, 132), width: 0.4),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          children: const [
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
  Widget buildMenuButton(MenuItem item, bool isEven) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Benfit(
              title: item.title,
              imagePath: item.imagePath,
              address: item.address,
              offers: item.offer,
              hiddenText1: item.hiddenText1,
              hiddenText2: item.hiddenText2,
              hiddenText3: item.hiddenText3,
            ),
          ),
        );
      },
      child: Table(
        border: TableBorder.all(color: Colors.black, width: 0.4),
        children: [
          TableRow(
            decoration: BoxDecoration(
              color: isEven ? evenRowColor : oddRowColor,
            ),
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        item.imagePath,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item.title,
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFC20000)),
                      ),
                    ],
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.address,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.offer,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Method to build an expandable section
  Widget buildExpandableSection(String title, List<MenuItem> items, bool isExpanded, Function() onTap) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          ListTile(
            title: Text('$title (${items.length})'),
            trailing: Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: onTap,
          ),
          if (isExpanded) ...[
            buildTableHeader(),
            ...items.asMap().entries.map((entry) {
              int index = entry.key;
              MenuItem item = entry.value;
              return buildMenuButton(item, index.isEven);
            }).toList(),
          ],
        ],
      ),
    );
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
                    color: isActive ? Colors.blue : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (isActive)
                Positioned(
                  bottom: 23,
                  child: Container(
                    height: 2,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffeeeff4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(255, 245, 109, 88),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.04),
                      Container(
                        height: height * 0.1,
                        color: const Color.fromARGB(255, 245, 109, 88),
                        child: Row(
                          children: [
                            buildHeaderButton('National', NationalBenfits(), activeSection == 'National'),
                            buildHeaderButton('Regional', RegionalBenfits(), activeSection == 'Regional'),
                            buildHeaderButton('Global', IndiaBenfits(), activeSection == 'Global'),
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
                icon: const Icon(Icons.arrow_back_ios),
              ),
              SizedBox(
                width: width * 0.55,
                child: const Center(
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
                  buildExpandableSection(
                    'Retail',
                    retailItems,
                    isExpandedRetail,
                    () {
                      setState(() {
                        isExpandedRetail = !isExpandedRetail;
                      });
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  buildExpandableSection(
                    'Services',
                    servicesItems,
                    isExpandedServices,
                    () {
                      setState(() {
                        isExpandedServices = !isExpandedServices;
                      });
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  buildExpandableSection(
                    'Shopping',
                    shoppingItems,
                    isExpandedShopping,
                    () {
                      setState(() {
                        isExpandedShopping = !isExpandedShopping;
                      });
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  buildExpandableSection(
                    'Groceries',
                    groceriesItems,
                    isExpandedGroceries,
                    () {
                      setState(() {
                        isExpandedGroceries = !isExpandedGroceries;
                      });
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  buildExpandableSection(
                    'Others',
                    othersItems,
                    isExpandedOthers,
                    () {
                      setState(() {
                        isExpandedOthers = !isExpandedOthers;
                      });
                    },
                  ),
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
