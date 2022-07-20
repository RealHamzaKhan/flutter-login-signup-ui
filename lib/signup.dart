import 'package:flutter/material.dart';
import 'constants.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xffF3E8E8),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15,),

                myLogo,
                const SizedBox(height: 10,),
                logoDescriptiveText,
                const SizedBox(height: 10,),
                lS('Sing Up'),
                const SizedBox(height: 30,),
                textFieldBoxes('First Name', Icons.perm_identity),
                const SizedBox(height: 10,),
                textFieldBoxes('Last Name', Icons.perm_identity_rounded),
                const SizedBox(height: 10,),
                textFieldBoxes('Phone Numer', Icons.phone),
                const SizedBox(height: 10,),
                textFieldBoxes('Email', Icons.email_sharp),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      fillColor: Color(0xffE2B1B1),
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_open_sharp,),
                      suffixIcon:  IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: (){
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9C5252),),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff9C5252),),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),


                const SizedBox(height: 35,),
                myButton('Sign Up'),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? ",
                      style:  TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Inter',
                      ),
                    ),
                    TextButton(
                        child:const Text(
                          'Login',
                          style:  TextStyle(
                            color: Color(0xff850606),
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        onPressed: () {
                          setState((){
                            Navigator.pop(context);
                          });

                        }
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}
