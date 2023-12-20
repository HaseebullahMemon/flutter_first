import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key, this.hint = 'Enter input Value', required this.controller});
  final String? hint;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofocus: true,
      keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          helperText: "Email Address",
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          helperStyle: TextStyle(color: Colors.red),
          labelText: "Enter a Number",
          hintText: hint),
    );
  }
}
