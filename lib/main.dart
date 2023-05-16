import 'package:flutter/material.dart';
import 'package:expense_manager/homepage.dart';

void main(List<String> args) {
  runApp(const Expense());
}

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const ExpenseManager(),
    );
  }
}

class ExpenseManager extends StatefulWidget {
  const ExpenseManager({super.key});

  @override
  State<ExpenseManager> createState() => ExpenseManagerState();
}
