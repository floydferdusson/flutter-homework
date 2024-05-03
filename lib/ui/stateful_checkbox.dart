import 'package:flutter/material.dart';

class StatefulCheckboxF extends StatefulWidget {
  final String labelText;
  const StatefulCheckboxF({
    super.key,
    required this.labelText,
  });

  @override
  State<StatefulCheckboxF> createState() => _StatefulCheckboxFState();
}

class _StatefulCheckboxFState extends State<StatefulCheckboxF> {
  bool _isChecked = false; // This variable now lives here

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            if (newValue != null) {
              setState(() => _isChecked = newValue);
            }
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() { _isChecked = !_isChecked; });
          },
          child: Text(widget.labelText),
        ),
      ],
    );
  }
}

