import 'package:flutter/material.dart';

class DialogesPhone extends StatelessWidget {
  DialogesPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Phone Ringtone'),
                      content: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: ringtones.map(
                              (ringtone) {
                                return RadioListTile<String>(
                                  title: Text(ringtone),
                                  value: ringtone,
                                  groupValue: selectedRingtone,
                                  onChanged: (String? value) {
                                    setState(() {
                                      selectedRingtone = value!;
                                    });
                                  },
                                );
                              },
                            ).toList(),
                          );
                        },
                      ),
                      actions: [
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            print('Selected Ringtone: $selectedRingtone');
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Choose Ringtone'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

String selectedRingtone = 'None';

final List<String> ringtones = [
  'None',
  'Callisto',
  'Ganymede',
  'Luna',
  'Ash',
];
