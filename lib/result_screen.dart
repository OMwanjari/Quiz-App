import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("you answered x out of y correctly"),
              SizedBox(
                height: 30,
              ),
              Text("question answers"),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Restart Quiz",
                    style: TextStyle(
                        color: Colors.deepPurple[900],
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
