import 'package:flutter/material.dart';
import 'package:expense_manager/main.dart';

class ExpenseManagerState extends State<ExpenseManager> {
  // @override
  // void initState() {
  // selected = [true, false];
  // super.initState();
  // }
  final List<bool> isSelected = [true, false];
  int _count = 0;

  void initState() {
    super.initState();
  }

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
                      showDragHandle: true,
                      // isScrollControlled: true,
                      useSafeArea: true,
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                            builder: (context, setModelState) {
                          return Scaffold(
                            persistentFooterButtons: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Next'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Back'),
                              ),
                            ],
                            persistentFooterAlignment:
                                AlignmentDirectional.bottomCenter,
                            appBar: AppBar(
                              centerTitle: true,
                              title: Text('Bottom Sheet'),
                              automaticallyImplyLeading: false,
                            ),
                            body: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Center(
                                  child: ToggleButtons(
                                      isSelected: isSelected,
                                      onPressed: (index) {
                                        setModelState(() {
                                          for (int i = 0;
                                              i < isSelected.length;
                                              i++) {
                                            isSelected[i] = i == index;
                                          }
                                        });
                                      },
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text('Credit'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text('Debit'),
                                        )
                                      ]),
                                ),
                                Text('$isSelected'),
                                isSelected[0]
                                    ? Text('Amount: ')
                                    : Text('Debit: '),
                                ElevatedButton(
                                    onPressed: () {
                                      KeyedSubtree(
                                        key: ValueKey<int>(_count),
                                        child: ElevatedButton(
                                          onPressed: () =>
                                              setState(() => ++_count),
                                          child: Text('RESET'),
                                        ),
                                      );
                                    },
                                    child: Text('Pop'))
                              ],
                            ),
                          );
                        });
                      });
                },
                icon: const Icon(Icons.add_card_rounded)),
          ),
        ],
      ),
    );
  }
}
