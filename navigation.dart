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
        Icon(icon, size: 25),
        const SizedBox(height: 0),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
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
      const NavItem(icon: Icons.menu, label: 'Menu'),
      const NavItem(icon: Icons.attach_money_rounded, label: 'Benefits'),
      const NavItem(icon: Icons.group, label: 'Team Square'),
      const NavItem(icon: Icons.account_balance_wallet, label: 'My Benefits'),
      const NavItem(icon: Icons.person, label: 'Profile'),
    ];

    return CurvedNavigationBar(
        backgroundColor: Colors.transparent, 
        // Remove background color
        color: Colors.white,
        buttonBackgroundColor: const Color.fromARGB(255, 249, 153, 73),
        maxWidth: double.infinity,
        height: 75,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        index: _selectedIndex,
        items: items,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            navigateToScreen(index);
          });
        },
      
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
