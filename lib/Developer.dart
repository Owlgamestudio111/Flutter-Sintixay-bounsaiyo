import 'package:flutter/material.dart';
import 'package:flutter_application_2/Darwer.dart';

class DeveloperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Developer')),
      drawer: myDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 20),
            Text(
              'ຊື່: ສິດທີໄຊ ບຸນໄຊໂຍ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              'ພັດທະນາໂດຍ Flutter',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
