import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tana/Profile.dart';
import 'package:tana/Teamsquare.dart';
import 'package:tana/mainBenfits.dart';
import 'package:tana/myBenfits.dart';

// Define the NavItem widget (move this code to a separate file or above if needed)
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
      NavItem(icon: Icons.group, label: 'Team'),
      NavItem(icon: Icons.account_balance_wallet, label: 'Wallet'),
      NavItem(icon: Icons.person, label: 'Profile'),
    ];
    double height = MediaQuery.of(context).size.height;

    return BottomAppBar(
      child: SizedBox(
        width: double.infinity,  // Ensure full width
        height: height * 0.1,    // Set height based on screen height
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
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
    switch (index) {
      case 0:
        Scaffold.of(context).openDrawer();
        break;
      case 1:
        navigateTo(MainBenfits());
        break;
      case 2:
        navigateTo(Teamsquare());
        break;
      case 3:
        navigateTo(myBenfit());
        break;
      case 4:
        navigateTo(Profile());
      default:
        // Handle default case
        break;
    }
  }

  void navigateTo(Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
