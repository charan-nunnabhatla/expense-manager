import 'package:flutter/material.dart';

class BottomSheetState extends StatelessWidget {
  final List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setModelState) {
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
        persistentFooterAlignment: AlignmentDirectional.bottomCenter,
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
            isSelected[0] ? Text('Amount: ') : Text('Debit: '),
          ],
        ),
      );
    });
  }
}
