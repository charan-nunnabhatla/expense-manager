import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Expense());
}

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExpenseManager(),
    );
  }
}

class ExpenseManager extends StatefulWidget {
  const ExpenseManager({super.key});

  @override
  State<ExpenseManager> createState() => ExpenseManagerState();
}

class ExpenseManagerState extends State<ExpenseManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expense Manager")),
    );
  }
}
