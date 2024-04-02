import 'package:flutter/material.dart';
import 'package:jokenpo/jokenpo.dart';

void main() {
  final ThemeData thema = ThemeData();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const JokenpoHome(),
      theme: ThemeData().copyWith(
        colorScheme: thema.colorScheme.copyWith(
          primary: Colors.amber,
        ),
      ),
    ),
  );
}