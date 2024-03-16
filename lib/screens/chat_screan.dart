import 'package:basic_chat_app/components/custem_TextField.dart';
import 'package:basic_chat_app/components/custom_text_bubble.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class ChatScrean extends StatelessWidget {
  const ChatScrean({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/scholar.png'
            ),height: 50,),
            Text(' chat'),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),
      body: CustomTextBubble(),
    )
    ;
  }
}

