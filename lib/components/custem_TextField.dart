import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.onChange});

  final String hintText;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data!.isEmpty){
          return 'Field is required' ;
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          )),
    );
  }
}
