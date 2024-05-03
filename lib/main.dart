import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_login/user/widget.dart';
import 'package:simple_login/album/widget.dart';
import 'package:simple_login/ui/screen.dart';
import 'package:simple_login/http/http.dart';

import 'login.dart';
import 'signup.dart';

void main() {
  HttpOverrides.global = fHttpOverrides();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const AllData1(),
    );
  }
}