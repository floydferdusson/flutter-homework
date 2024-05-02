import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_login/ui/password_textfield.dart';
import 'package:simple_login/ui/screen.dart';
import 'package:simple_login/ui/stateful_checkbox.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Screen(
        imgPath: 'images/login_bg.jpg',
        child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SizedBox(
            height: 600, width: 400,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Login', style: styleHeader),
                    const SizedBox(height: 20),
                    const Text('Username or email', style: styleLabel),
                    const SizedBox(height: 8),
                    const TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 12),
                    const Text('Password', style: styleLabel),
                    const SizedBox(height: 8),
                    const PasswordTextField(),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: () {},
                      child: Text(
                          'Forgot your password?',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor
                        ),
                      ),
                    ),
                    const Spacer(),
                    const StatefulCheckbox(labelText: 'Keep me signed in'),
                    const SizedBox(height: 4),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text(
                          'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const Divider(height: 36),
                    OutlinedButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(50)
                      ),
                      child: const Text(
                          'REGISTER',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
        ),
      ),
    );
  }
}

const styleHeader = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 32,
  letterSpacing: 1,
);

const styleLabel = TextStyle(fontWeight: FontWeight.bold);