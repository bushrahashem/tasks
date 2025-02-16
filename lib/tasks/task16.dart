import 'package:flutter/material.dart';

class Task16 extends StatelessWidget {
  const Task16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reusable components"),
      ),
      body: Center(
        child: Column(
          children: [
            // 1
            Row(
              children: [
                CustomButton(
                  text: 'Button1',
                  onPressed: () {
                    print("Button1 Pressed");
                  },
                ),
                CustomButton(
                  text: 'Button2',
                  onPressed: () {
                    print("Button2 Pressed");
                  },
                ),
              ],
            ),
            // 2
            ElevatedButton(
              onPressed: () {
                print("Button2 Pressed");
              },
              child: Text("Button2"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

//import 'package:flutter/material.dart';

/*class Task16 extends StatelessWidget {
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
}*/
