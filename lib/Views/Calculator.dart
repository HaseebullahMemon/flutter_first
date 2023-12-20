import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/Views/InputField.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int x = 0;
  int y = 0;
  int z = 0;

  final InputTextControllerOne = TextEditingController();
  final InputTextControllerTwo = TextEditingController();

  @override
  void initState() {
    super.initState();
    InputTextControllerOne.text = x.toString();
    InputTextControllerTwo.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
      child: Column(
        children: [
          InputField(
              hint: "Enter Your Name", controller: InputTextControllerOne),
          SizedBox(height: 30),
          InputField(
              hint: "Enter Your Name", controller: InputTextControllerTwo),
          Spacer(),
          const Text(
            "0",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  z = x + y;
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  z = x - y;
                },
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {
                  z = x * y;
                },
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  z = x % y;
                },
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          )
        ],
      ),
    );
  }
}
