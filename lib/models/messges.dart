import 'package:basic_chat_app/Constants.dart';

class Message {
 final String message ;
  Message(this.message);




  factory Message.fromJson(jsonData){
    return Message(jsonData[KMessage]);
  }


}