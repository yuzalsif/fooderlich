import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/home.dart';

void main() => runApp(const FooderLich());

class FooderLich extends StatelessWidget {
  const FooderLich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderLichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
