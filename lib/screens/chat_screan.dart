import 'package:basic_chat_app/components/custom_text_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Constants.dart';
import '../models/messges.dart';

class ChatScrean extends StatelessWidget {
  ChatScrean({super.key});

  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');
  TextEditingController controller = TextEditingController();
  final scrolController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: messages.orderBy('createAt',descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Message> MessageList = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              MessageList.add(Message.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                backgroundColor: KPrimaryColor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/scholar.png'),
                      height: 50,
                    ),
                    Text(' chat'),
                  ],
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse:true ,
                        controller: scrolController,
                        itemCount: MessageList.length,
                        itemBuilder: (context, index) {
                          return CustomTextBubble(
                            message: MessageList[index],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        messages.add({
                          'message': data,
                          'createAt': DateTime.now(),
                        });
                        controller.clear();
                        scrolController.animateTo(
                           0,
                            duration: Duration(seconds: 1),
                            curve: Curves.fastOutSlowIn);
                      },
                      decoration: InputDecoration(
                        hintText: 'Send Message',
                        suffixIcon: Icon(
                          Icons.send,
                          color: KPrimaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: KPrimaryColor)),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Text('ddsf');
          }
        });
  }
}
