import 'package:flutter/material.dart';
import 'package:tana/Profile.dart';
import 'package:tana/mainBenfits.dart';
import 'package:tana/myBenfits.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selected;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selected,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _selectedIndex; // Initialize with the provided selected index

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selected; // Initialize with the selected index
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return BottomAppBar(
      height: height * 0.08,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildIconButton(Icons.menu, 0), // Example icon
          buildIconButton(Icons.attach_money_rounded, 1),    // Example icon
          buildIconButton(Icons.account_balance_wallet, 2), // Example icon
          buildIconButton(Icons.person, 3), // Example icon
          ],
      ),
    );
  }

  IconButton buildIconButton(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        color: _selectedIndex == index ? Colors.blue : Colors.grey, // Change color based on selection
        size: 24, // Adjust size as needed
      ),
      onPressed: () {
        if (_selectedIndex != index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
          navigateToScreen(index);
        }
      },
    );
  }

  void navigateToScreen(int index) {
    switch (index) {
      case 0:
        Scaffold.of(context).openDrawer();
        break;
      case 1:
        navigateTo(MainBenfits());
        break;
      case 2:
        navigateTo(myBenfit());
        break;
      case 3:
        navigateTo(Profile());
        break;
      default:
        // Handle default case
        break;
    }
  }

  void navigateTo(Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
