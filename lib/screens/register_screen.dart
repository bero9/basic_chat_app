import 'package:basic_chat_app/Constants.dart';
import 'package:basic_chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../components/custem_TextField.dart';
import '../components/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Image(image: AssetImage('assets/images/scholar.png')),
          
              Text(
                'Scholar Chat',
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: 'pacifico'),
              ),
              SizedBox(height: 100,),
              Row(
                children: [
                  Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              CustomTextField(
                hintText: 'Email',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: 'Password',
              ),
              SizedBox(
                height: 32,
              ),
              Cusyom_Bottom(text: 'REGISTER',),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AlReady have a account? ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
          
                    },
                    child: Text(
                      'Login ',
                      style: TextStyle(color: Color(0xffC7EDE6)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
