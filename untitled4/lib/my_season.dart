import 'package:flutter/material.dart';

class MySeason extends StatelessWidget {
  final String url;
  final String text;
  const MySeason({required this.url, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(url, height: 125, width: 125, fit: BoxFit.cover),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 25)),
      ],
    );
  }
}
