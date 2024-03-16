
import 'package:basic_chat_app/Constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../components/custem_TextField.dart';
import '../components/custom_button.dart';
import '../components/custom_snackbar.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key,});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;
  String? email;
  String? password;


  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: KPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image(image: AssetImage('assets/images/scholar.png')),
                  Text(
                    'Scholar Chat',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontFamily: 'pacifico'),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    hintText: 'Email',
                    onChange: (data) {
                      email = data;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    onChange: (data) {
                      password = data;
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Cusyom_Bottom(
                      text: 'LOGIN',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {

                          });
                          try {
                            var auth = FirebaseAuth.instance;
                            UserCredential user =
                            await auth.signInWithEmailAndPassword(
                              email: email!,
                              password: password!,
                            );
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChatScrean();
                            }));
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              CustomSnackBar(
                                  context, 'user-not-found');
                            } else if (e.code == 'wrong-password') {
                              CustomSnackBar(context,
                                  'wrong-password.');
                            }
                          } catch (e) {
                            CustomSnackBar(context, 'There was an error');
                          }
                          isLoading = false;
                          setState(() {

                          });
                        } else {}
                      }),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'don\'t have an account ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Register ',
                          style: TextStyle(color: Color(0xffC7EDE6)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
