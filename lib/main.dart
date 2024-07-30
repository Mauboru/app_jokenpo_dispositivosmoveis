import 'package:flutter/material.dart';
// import 'package:jokenpo/jokenpo.dart';
import 'package:jokenpo/home.dart';

void main() {
  final ThemeData thema = ThemeData();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData().copyWith(
        colorScheme: thema.colorScheme.copyWith(
          primary: Colors.amber,
        ),
      ),
    ),
  );
}