import 'package:flutter/material.dart';

class CardWithPaddingF extends StatelessWidget {
  final Widget child;
  final double padding;
  const CardWithPaddingF({
    super.key,
    required this.child,
    this.padding = 28.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}

class SizedCardWithPaddingF extends StatelessWidget {
  final Widget child;
  final double padding, height, width;
  const SizedCardWithPaddingF({
    super.key,
    required this.child,
    required this.height,
    required this.width,
    this.padding = 28.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, width: width,
      child: CardWithPaddingF(
        child: child,
      ),
    );
  }
}

