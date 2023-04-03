import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:expense_manager/main.dart';

class ExpenseManagerState extends State<ExpenseManager> {
  late List<bool> selected;

  @override
  void initState() {
    selected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Manager"),
      ),
      body: Column(
        children: [
          Center(
            child: ToggleButtons(
              children: [Text("Expense"), Text("Income")],
              isSelected: selected,
              selectedColor: Color.fromARGB(193, 82, 132, 141),
              disabledColor: Color.fromARGB(239, 131, 130, 130),
              fillColor: Color.fromARGB(255, 163, 160, 160),
              onPressed: (index) {
                setState(() {
                  for (int i = 0; i < selected.length; i++) {
                    selected[i] = i == index;
                  }
                });
              },
            ),
          ),
          Text("${selected}"),
        ],
      ),
    );
  }
}
