import 'package:flutter/material.dart';
import 'package:flutter_push_pop/form.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

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