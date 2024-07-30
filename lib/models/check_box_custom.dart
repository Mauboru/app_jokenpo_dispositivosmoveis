import 'package:flutter/material.dart';
import 'package:jokenpo/models/check_box_option.dart';

class CheckBoxCustomWidget extends StatefulWidget {
  const CheckBoxCustomWidget({super.key, required this.item});
  final CheckBoxOption item;

  @override
  State<CheckBoxCustomWidget> createState() => _CheckBoxCustomWidgetState();
}

class _CheckBoxCustomWidgetState extends State<CheckBoxCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.title),
      value: widget.item.checked,
      onChanged: (value) => {
        setState(() {
          widget.item.checked = value!;
        })
      },
    );
  }
}