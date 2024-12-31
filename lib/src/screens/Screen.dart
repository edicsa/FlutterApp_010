import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Screen extends StatelessWidget {
  Screen({super.key, required this.name});

  // ignore: prefer_typing_uninitialized_variables
  final name;
  final TextStyle optionStyle = TextStyle(
      fontFamily: "Roboto", fontSize: 30, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      name,
      style: optionStyle,
    ));
  }
}
