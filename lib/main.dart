import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/home_page.dart';
import 'package:flutter_train_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          home: HomePage(),
          themeMode: currentMode,
          theme: lightTheme,
          darkTheme: darkTheme,
        );
      },
    );
  }
}
