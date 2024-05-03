import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_login/signup.dart';
import 'package:simple_login/ui/screen.dart';

import 'ui/card_with_padding.dart';
import 'ui/password_textfield.dart';
import 'ui/stateful_checkbox.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var username = TextEditingController();
  var password = TextEditingController();
  late String errormessage;
  late bool isError;

  @override
  void initState() {
    errormessage = 'An error occurred'; isError = false;
    super.initState();
  }

  void checkLogin(username, password) {
    setState(() {
      if (username == '') {
        errormessage = 'Please enter your username';
        isError = true;
      } else if (password == '') {
        errormessage = 'Please enter your password';
        isError = true;
      } else {
        errormessage = '';
        isError = false;
      }
    });
  }

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
                const Text('Login', style: styleHeader),
                const SizedBox(height: 20),
                const Text('Username or email', style: styleLabel),
                const SizedBox(height: 8),
                TextField(
                  controller: username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 12),
                const Text('Password', style: styleLabel),
                const SizedBox(height: 8),
                PasswordTextFieldF(controller: password),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const StatefulCheckboxF(labelText: 'Keep me signed in'),
                    if (isError) Text(errormessage, style: styleError),
                  ],
                ),
                const SizedBox(height: 4),
                FilledButton(
                  onPressed: () {
                    checkLogin(username.text, password.text);
                    /*Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));*/
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Sign in', style: styleButtonText),
                ),
                const Divider(height: 36),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ));
                  },
                  style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)
                  ),
                  child: const Text('Sign up', style: styleButtonText),
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

const styleError = TextStyle(
  color: Colors.redAccent,
);