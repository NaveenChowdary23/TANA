import 'package:flutter/material.dart';
import 'package:tana/mainBenfits.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _OneStopScreenState createState() => _OneStopScreenState();
}

class _OneStopScreenState extends State<DrawerWidget> {
  late Map<String, dynamic> details;
//class DrawerWidget extends StatelessWidget {
  Map<String, dynamic>? userData;
  @override
  void initState() {
    super.initState();
  }

 
  bool _isExpanded = false;
  bool _isExpanded1 = false;

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Drawer(
      width: Width * 0.8,
      child: SafeArea(
        child: Column(
          children: [
            Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('HOME'.toUpperCase()),
            onTap: () {
              
            },
          ),
          
        ],
      ),
    ),

             Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('ABOUT TANA'.toUpperCase()),
            onTap: () {
              
            },
          ),
          
        ],
      ),
    ),
             Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Leadership'.toUpperCase()),
            trailing: Icon(_isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
          if (_isExpanded)
            Column(
              children: [
                ListTile(
              title: const Text("Executive Committee"),
              onTap: () {
                // Handle home item tap
                // Close the drawer
              },
            ),
            ListTile(
              title: const Text("Board of Directors"),
              onTap: () {
                // Handle home item tap
                // Close the drawer
              },
            ),
            ListTile(
              title: const Text("Foundation "),
              onTap: () {
                // Handle home item tap
                // Close the drawer
              },
            ),
            ListTile(
              title: const Text("Presidents Club"),
              onTap: () {
                // Handle home item tap
                // Close the drawer
              },
            ),
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
            title: Text('Team Square'.toUpperCase()),
            trailing: Icon(_isExpanded1 ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onTap: () {
              setState(() {
                _isExpanded1 = !_isExpanded1;
              });
            },
          ),
          if (_isExpanded1)
            Column(
              children: [
                ListTile(
              title: const Text("About Team Square"),
              onTap: () {
                // Handle home item tap
                // Close the drawer
              },
            ),
            ListTile(
              title: const Text("Call us for Help"),
              onTap: () {
                // Handle home item tap
                // Close the drawer
              },
            ),
            
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
            title: Text('CONTACT'.toUpperCase()),
            onTap: () {
              
            },
          ),
          
        ],
      ),
    ),
            
          ],
        ),
      ),
    );
  }
}