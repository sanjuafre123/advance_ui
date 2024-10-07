import 'package:flutter/material.dart';
import 'package:material_cupertino/screens/cupertino_time_picker.dart';
import 'package:material_cupertino/screens/dialoges_phone.dart';
import 'package:material_cupertino/screens/ducked_data_picker.dart';
import 'package:material_cupertino/screens/data_ios.dart';
import 'package:material_cupertino/screens/time_picker_dial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DialogesPhone(),
    );
  }
}


