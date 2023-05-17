import 'package:flutter/material.dart';
import 'package:expense_manager/main.dart';
import 'package:expense_manager/bottomsheet.dart';

class ExpenseManagerState extends State<ExpenseManager> {
  // @override
  // void initState() {
  // selected = [true, false];
  // super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Manager"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                      // isScrollControlled: true,
                      elevation: 2,
                      showDragHandle: true,
                      // isScrollControlled: true,
                      useSafeArea: true,
                      context: context,
                      builder: (BuildContext context) {
                        return BottomSheetState();
                      });
                },
                icon: const Icon(Icons.add_card_rounded)),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${index+1}'),
            ),
          );
        },
      ),
    );
  }
}
