import 'package:flutter/material.dart';

class Details extends StatelessWidget {
Details({Key? key, required this.name}): super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text(name),
              leading:const Icon(Icons.person),
            ),
          ],
        ),

      ),
    );
  }
}