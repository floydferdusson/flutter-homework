import 'package:flutter/material.dart';
import 'package:simple_login/ui/card_with_padding.dart';
import 'package:simple_login/ui/password_textfield.dart';
import 'package:simple_login/ui/screen.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var password = TextEditingController();
  var retypePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenF(
      imgPath: 'images/login_bg.jpg',
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SizedCardWithPaddingF(
            height: 600, width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Sign-up', style: styleHeader),
                const SizedBox(height: 20),
                const Text('Name', style: styleLabel),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.badge),
                  ),
                ),
                const SizedBox(height: 12),
                const Text('Username or email', style: styleLabel),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
               const SizedBox(height: 12),
               const Text('Password', style: styleLabel),
               PasswordTextFieldF(controller: password),
               const SizedBox(height: 12),
               const Text('Retype Password', style: styleLabel),
               PasswordTextFieldF(controller: retypePassword),
                const Spacer(),
                FilledButton(
                  onPressed: () { Navigator.pop(context); },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Create account', style: styleButtonText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const styleHeader = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  letterSpacing: 1,
);

const styleLabel = TextStyle(fontWeight: FontWeight.bold);

const styleButtonText = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18,
  letterSpacing: 0.8,
);
