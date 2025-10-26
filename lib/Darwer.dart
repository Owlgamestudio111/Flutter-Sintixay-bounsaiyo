import 'package:flutter/material.dart';
import 'package:flutter_application_2/home2.dart';
import 'package:flutter_application_2/product.dart';
import 'package:flutter_application_2/developer.dart';

Drawer myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
              radius: 70,
              child: ClipOval(
                  child: Image.asset(
                    'asset/20251023_092619.jpg',
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Student: Sintixay Bounsaiyo',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('Product'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Product()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Developer'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DeveloperPage()),
            );
          },
        ),
      ],
    ),
  );
}
