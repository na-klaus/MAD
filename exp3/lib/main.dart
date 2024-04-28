import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Displaying an Image"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Image.asset(
          'assets/Flower.jpg',  // Specify the path to your image asset
          height: 300,           // Adjust the height as needed
          width: 300,            // Adjust the width as needed
          fit: BoxFit.cover,    // Adjust the fit type as needed
        ),
      ),
    );
  }
}
