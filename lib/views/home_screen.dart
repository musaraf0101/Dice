import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 208, 208, 208),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          width: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dice Roll App",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Image.asset(''),
              ElevatedButton(
                onPressed: null,
                child: Text("Roll Dice", style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
