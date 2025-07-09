import 'dart:math';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int imagenumber = Random().nextInt(5) + 1;
  // Random rand = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(99, 115, 110, 110),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          width: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ("Dice Roll App"),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 13, 11, 11).withAlpha(105),
                ),
              ),
              Image.asset('images/dice-$imagenumber.png'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black38,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                ),
                onPressed: () {
                  setState(() {
                    imagenumber = Random().nextInt(5) + 1;
                  });
                },
                child: Text(
                  ("Roll Dice").toUpperCase(),
                  style: TextStyle(color: Color.fromARGB(255, 245, 245, 245)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
