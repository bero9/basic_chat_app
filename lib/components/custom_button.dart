
import 'package:flutter/material.dart';

class Cusyom_Bottom extends StatelessWidget {
  const Cusyom_Bottom({
    super.key, required this.text, required this.onTap,
  });
final String text;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),

        ),
        width: double.infinity,
        height: 65,
        child: Center(child: Text(text)),
      ),
    );
  }
}
