import 'package:flutter/material.dart';

AppBar myAppBar(color, text) {
  return AppBar(
    backgroundColor: color,
    title: Align(
      alignment: Alignment.center,
      child: Text(text, style: const TextStyle(fontSize: 24)),
    ),
  );
}
