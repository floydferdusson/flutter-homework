import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final String imgPath;

  const Screen({
    super.key,
    required this.child,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [Colors.black12, Colors.black87],
          ),
        ),
        child: child,
      ),
    );
  }
}
