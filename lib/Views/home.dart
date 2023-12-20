import 'package:flutter/material.dart';
import 'package:first_project/Views/Calculator.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const SafeArea(child: SafeArea(child: Calculator())),
      ),
    );
  }
}
