import 'package:ceoapp/home/home_screen.dart';
import 'package:ceoapp/login/signup_screen.dart';
import 'package:flutter/material.dart';
import 'component.dart';


class SignInScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                Text(
                  'Sign  In',
                  style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,

                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFieldComponent(
                  txtHint: 'Email Address',
                  txtController: _emailController,
                  passHide: false,
                ),
                TextFieldComponent(
                  txtHint: 'Password',
                  txtController: _passController,
                  passHide: true,
                ),
                SignUpButton(
                  btnTxt: 'Sign In',
                  btnFunction: () async {
                    final email = _emailController.text.toString().trim();
                    final pass = _passController.text.toString().trim();

                    if (email != null && pass != null) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                    } else {
                      print('null');
                    }
                  },
                ),


                FltButton(
                  btnTxt: 'New User?Sign Up',
                  btnFunction: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
