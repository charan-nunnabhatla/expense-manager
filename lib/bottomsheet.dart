import 'package:flutter/material.dart';
import 'package:expense_manager/credit_bottomsheet.dart';

class BottomSheetState extends StatelessWidget {
  BottomSheetState({super.key});

  final List<bool> isSelected = [true, false];
  final formKey = GlobalKey<FormState>();
  final String creditName = '';
  final int creditAmount = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setModelState) {
      return Scaffold(
        persistentFooterButtons: [
          ElevatedButton(
            onPressed: () {
              formKey.currentState!.save();
              print(formKey.currentState);
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Done'),
                  ),
                );
              }
            },
            child: Text('Submit'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancle'),
          ),
        ],
        persistentFooterAlignment: AlignmentDirectional.bottomCenter,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Bottom Sheet'),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: ToggleButtons(
                    isSelected: isSelected,
                    onPressed: (index) {
                      setModelState(() {
                        for (int i = 0; i < isSelected.length; i++) {
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
              Text('$creditName $creditAmount'),
              isSelected[0]
                  ? creditForm(setModelState, formKey, creditName, creditAmount, context)
                  : const Text('Debit: '),
            ],
          ),
        ),
      );
    });
  }
}
