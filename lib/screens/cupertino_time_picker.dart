import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimePicker extends StatelessWidget {
  const CupertinoTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Time'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  alignment: Alignment.bottomLeft,
                  backgroundColor: Colors.white,
                  child: SizedBox(
                    height: 250,
                    child: CupertinoTimerPicker(
                      onTimerDurationChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Open Timer Picker'),
        ),
      ),
    );
  }
}
