import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.light,
  ),
  cardColor: Colors.white, // HomePage 의 출발도착 선택 박스 색상 지정
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
  ),
  cardColor:
      const Color.fromARGB(255, 80, 80, 80), // HomePage 의 출발도착 선택 박스 색상 지정
);
