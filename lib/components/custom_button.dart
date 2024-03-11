
import 'package:flutter/material.dart';

class Cusyom_Bottom extends StatelessWidget {
  const Cusyom_Bottom({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),

      ),
      width: double.infinity,
      height: 65,
      child: Center(child: Text(text)),
    );
  }
}
