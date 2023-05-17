import 'package:flutter/material.dart';

Widget creditForm(StateSetter state, GlobalKey formKey, String credit_name,
    int credit_amount, BuildContext context) {
  return Form(
    key: formKey,
    child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Row(
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onSaved: (newValue) {
                  state(
                    () {
                      credit_name = newValue.toString();
                    },
                  );
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.abc_outlined),
                  // hintText: 'Enter Name Of Credit',
                  label: Text('Credit Name'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid data';
                  }
                  return null;
                },
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        children: [
          const SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onSaved: (newValue) {
                  state(
                    () {
                      if (newValue!.isEmpty) {
                      } else {
                        try {
                          credit_amount = int.parse(newValue.toString());
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Invalid Data'),
                            ),
                          );
                          print(e);
                        }
                      }
                    },
                  );
                },
                decoration: const InputDecoration(
                  icon: Icon(Icons.price_change),
                  // hintText: 'Enter Name Of Credit',
                  label: Text('Credit Amount'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid amount';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 20),
    ]),
  );
}
