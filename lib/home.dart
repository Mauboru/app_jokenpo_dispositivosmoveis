// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jokenpo/models/check_box_option.dart';
import 'package:jokenpo/models/check_box_custom.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _HomeState();

  final List<CheckBoxOption> months = [
    CheckBoxOption(title: 'January'),
    CheckBoxOption(title: 'February'),
    CheckBoxOption(title: 'March'),
    CheckBoxOption(title: 'April'),
    CheckBoxOption(title: 'May'),
    CheckBoxOption(title: 'June'),
    CheckBoxOption(title: 'July'),
    CheckBoxOption(title: 'August'),
    CheckBoxOption(title: 'October'),
    CheckBoxOption(title: 'September'),
    CheckBoxOption(title: 'November'),
    CheckBoxOption(title: 'December'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Aula 30/07'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: months.length,
          itemBuilder: (_, index) {
            return CheckBoxCustomWidget(item: months[index]);
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}