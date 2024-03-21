
import 'package:flutter/material.dart';

import '../Constants.dart';
import '../models/messges.dart';

class CustomTextBubble extends StatelessWidget {
  const CustomTextBubble({
    super.key, required this.message,
  });
 final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(

        padding: EdgeInsets.only(left: 16,right: 24,bottom: 24,top: 24),

        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32)
          ),
          color: KPrimaryColor,
        ),
        child: Text(message.message,style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}




class CustomTextBubble2 extends StatelessWidget {
  const CustomTextBubble2({
    super.key, required this.message,
  });
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(

        padding: EdgeInsets.only(left: 16,right: 24,bottom: 24,top: 24),

        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32)
          ),
          color: Colors.orange,
        ),
        child: Text(message.message,style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}