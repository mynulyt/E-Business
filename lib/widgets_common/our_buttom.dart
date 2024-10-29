import 'package:emart_ecommerce/consts/styles.dart';
import 'package:flutter/material.dart';

Widget ourButtom(
    {required VoidCallback onPress,
    required Color color,
    required Color textColor,
    required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontFamily: bold,
      ),
    ),
  );
}
