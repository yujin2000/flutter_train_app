import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/home_page.dart';
import 'package:flutter_train_app/seat/widgets/seat_page.dart';
import 'package:flutter_train_app/station_list/widgets/station_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
