import 'package:flutter/material.dart';
import 'package:simple_login/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome world!'),
        ),
        body: Center(
          child: FilledButton(
            onPressed: () { Navigator.pop(context); },
            child: const Text('LOGOUT', style: styleButtonText),
          ),
        )
    );
  }
}
