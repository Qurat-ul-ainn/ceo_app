import 'package:flutter/material.dart';
import 'component.dart';
import 'signin_screen.dart';

class SignUpScreen extends StatelessWidget {
  final _nameController =TextEditingController();
  final _emailController =TextEditingController();
  final _phoneController = TextEditingController();
  final _passController =TextEditingController();


    @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
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
                  'Sign Up',
                //  textAlign: TextAlign.left,
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
                  txtHint: 'Name',
                  txtController: _nameController,
                  passHide: false,
                ),
                TextFieldComponent(
                  txtHint: 'Email Address',
                  txtController: _emailController,
                  passHide: false,
                ),
                TextFieldComponent(
                  txtHint: 'Mobile Number',
                  txtController: _phoneController,
                  passHide: false,
                ),
                TextFieldComponent(
                  txtHint: 'Password',
                  txtController: _passController,
                  passHide: false,
                ),
                SignUpButton(
                  btnTxt: 'Create Account',
                  btnFunction: () async {
                    final gName = _nameController.text.toString().trim();
                    final gEmail = _emailController.text.toString().trim();
                    final gPhone = _phoneController.text.toString().trim();
                    final gPass = _passController.text.toString().trim();


                    if(gName != null&& gEmail != null && gPhone != null&& gPass != null){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                        return SignInScreen();
                      }));
                    }
                    else{
                      print('Error');
                    }
                  },
                ),
                FltButton(
                  btnFunction: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SignInScreen();
                      }),
                    );
                  },
                  btnTxt: 'Already have an account?Sign In',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
