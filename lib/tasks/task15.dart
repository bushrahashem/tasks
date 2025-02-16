import 'package:flutter/material.dart';

//
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task15(),
    );
  }
}

class Task15 extends StatelessWidget {
  const Task15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero␣Animation")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Hero(
            tag: 'hero-tag',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second␣Screen")),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
