import 'package:flutter/material.dart';
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
home: MyHomePage(),
);
}
}
class MyHomePage extends StatelessWidget {
const MyHomePage({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text("My first flutter app"),
backgroundColor: Colors.amber,),
body: Container(
height: 600, width: 600,
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(height: 200, width: 200, color: Colors.pink,),
Container(child: Text("Widget demo"), color:
Colors.lightGreen,),
Container(height: 200, width: 200, color:
Colors.lightBlue,),
Container(child: Text("Welcome to Flutter!"),),
],
),
),
);
}
}