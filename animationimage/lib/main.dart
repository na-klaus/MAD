import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedImageScreen(),
    );
  }
}

class AnimatedImageScreen extends StatefulWidget {
  @override
  _AnimatedImageScreenState createState() => _AnimatedImageScreenState();
}

class _AnimatedImageScreenState extends State<AnimatedImageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(begin: 0.0, end: 360.0).animate(_controller);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Image'),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/Flower.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
