import 'package:flutter/material.dart';
import 'package:portfolio/layout/home_screen_layout_builder.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Fariza A A",
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
        ),
      
      debugShowCheckedModeBanner: false,
        home: const HomeScreenLayoutBuilder()
    );
  }
}


