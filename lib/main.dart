import 'package:app_jokenpo_dispositivosmoveis/jokenpo.dart';
import 'package:flutter/material.dart';

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