import 'package:flutter/material.dart';
import 'package:flutter_push_pop/details.dart';

// class Forms extends StatelessWidget {
//   const Forms({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text("Fluter Push",
//         style: TextStyle(fontSize: 15.0,
//         fontWeight: FontWeight.bold),),
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         foregroundColor: Colors.white,
//       ),
//     );
//   }
// }

class Forms extends StatefulWidget {
  Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {

final _productController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fluter Push",
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),

      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              controller: _productController,
              decoration: const InputDecoration(
                labelText: "User Name",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            button(context),
          ],
        ),
      ),
    
    );
  }

  ElevatedButton button(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(name: _productController.text),
                ),
              );
            },
            child: const Text("Next"),
          );
  }
}
