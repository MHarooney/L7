import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';

void showSnackBar(String inputText, BuildContext context) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 3),
    content: Text(inputText),
    backgroundColor: primaryColor,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
