import 'package:flutter/material.dart';

class PasswordTextFieldF extends StatefulWidget {
  final TextEditingController controller;
  const PasswordTextFieldF({
    super.key,
    required this.controller,
  });

  @override
  State<PasswordTextFieldF> createState() => _PasswordTextFieldFState();
}

class _PasswordTextFieldFState extends State<PasswordTextFieldF> {
  bool _obscureText = true; // Track password visibility

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText; // Toggle visibility
            });
          },
        ),
      ),
    );
  }
}
