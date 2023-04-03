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
      // theme: ThemeData.from(
      //   colorScheme: const ColorScheme(
      //     background: Color.fromARGB(255, 0, 0, 0),
      //     onBackground: Color.fromARGB(255, 0, 0, 0),
      //     brightness: Brightness.dark,
      //     primary: Color.fromARGB(255, 115, 120, 197),
      //     onPrimary: Color.fromARGB(255, 128, 142, 206),
      //     secondary: Color.fromARGB(255, 120, 201, 187),
      //     onSecondary: Color.fromARGB(255, 113, 191, 194),
      //     error: Color.fromARGB(255, 184, 122, 122),
      //     onError: Color.fromARGB(255, 184, 122, 122),
      //     surface: Color.fromARGB(255, 99, 190, 130),
      //     onSurface: Color.fromARGB(255, 99, 190, 130),
      //   ),
      // ),
      home: ExpenseManager(),
    );
  }
}

class ExpenseManager extends StatefulWidget {
  const ExpenseManager({super.key});

  @override
  State<ExpenseManager> createState() => ExpenseManagerState();
}
