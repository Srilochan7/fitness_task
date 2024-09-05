import 'package:flutter/material.dart';
import 'package:fitness_task/screens/analytics/analytics.dart';
import 'package:fitness_task/screens/explore/explore.dart';
import 'package:fitness_task/screens/home/homepage.dart';
import 'package:fitness_task/screens/profile/profile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Lochan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              accountEmail: Text(
                '5 days streak 🔥',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Explore'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Explore()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Analytics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Analytics()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            
          ],
        ),);
    
  }
}
