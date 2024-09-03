import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tana/Profile.dart';
import 'package:tana/Teamsquare.dart';
import 'package:tana/mainBenfits.dart';
import 'package:tana/myBenfits.dart';

// Define the NavItem widget
class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const NavItem({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 30),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

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
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedIndex with the provided selected value
    _selectedIndex = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      NavItem(icon: Icons.menu, label: 'Menu'),
      NavItem(icon: Icons.attach_money_rounded, label: 'Benefits'),
      NavItem(icon: Icons.group, label: 'Team Square'),
      NavItem(icon: Icons.account_balance_wallet, label: 'My Benefits'),
      NavItem(icon: Icons.person, label: 'Profile'),
    ];
    double height = MediaQuery.of(context).size.height;

    return BottomAppBar(
      child: SizedBox(
        width: double.infinity,  // Ensure full width
        height: height * 0.1,    // Set height based on screen height
        child: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color.fromARGB(255, 243, 120, 20),
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: _selectedIndex,
          items: items,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              navigateToScreen(index);
            });
          },
        ),
      ),
    );
  }

  void navigateToScreen(int index) {
    Widget screen;
    switch (index) {
      case 0:
        Scaffold.of(context).openDrawer();
        return; // Do not navigate
      case 1:
        screen = MainBenfits();
        break;
      case 2:
        screen = Teamsquare();
        break;
      case 3:
        screen = MyBenefit();
        break;
      case 4:
        screen = Profile();
        break;
      default:
        return; // Do nothing if index is invalid
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    ).then((_) {
      // When coming back, update the _selectedIndex to keep the selected tab
      setState(() {
        _selectedIndex = index;
      });
    });
  }
}
