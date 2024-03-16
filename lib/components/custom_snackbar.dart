import 'package:flutter/material.dart';

void CustomSnackBar(BuildContext context ,String text)  {

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content:
      Text(text)));
}
