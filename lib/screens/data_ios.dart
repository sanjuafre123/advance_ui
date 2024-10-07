import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataIosPage extends StatelessWidget {
  const DataIosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data IOS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 260,
            child: CupertinoDatePicker(onDateTimeChanged: (value) {
              print(value);
            },),
          ),
        ],
      ),
    );
  }
}

