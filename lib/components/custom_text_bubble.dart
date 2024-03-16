
import 'package:flutter/material.dart';

import '../Constants.dart';

class CustomTextBubble extends StatelessWidget {
  const CustomTextBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16),
      height: 65,
      width: 150,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomRight: Radius.circular(32)
        ),
        color: KPrimaryColor,
      ),
      child: Text('I am a new user',style: TextStyle(
        color: Colors.white,
      ),),
    );
  }
}