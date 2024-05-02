import 'package:flutter/material.dart';

class StatefulCheckbox extends StatefulWidget {
  final String labelText;
  const StatefulCheckbox({
    super.key,
    required this.labelText,
  });

  @override
  State<StatefulCheckbox> createState() => _StatefulCheckboxState();
}

class _StatefulCheckboxState extends State<StatefulCheckbox> {
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

