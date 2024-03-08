import 'package:flutter/material.dart';
import 'package:flutter_push_pop/form.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Push & Pop",
      theme: ThemeData.light(),
      home: Forms(),
    );
  }
}