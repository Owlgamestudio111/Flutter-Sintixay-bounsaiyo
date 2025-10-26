import 'package:flutter/material.dart';
import 'package:flutter_application_2/Darwer.dart';

class Product extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 15000000},
    {'name': 'Smartphone', 'price': 8000000},
    {'name': 'Headphone', 'price': 1200000},
    {'name': 'Keyboard', 'price': 700000},
    {'name': 'Mouse', 'price': 400000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product')),
      drawer: myDrawer(context),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          var item = products[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(item['name']),
              subtitle: Text('ລາຄາ: ${item['price']} ກີບ'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}
