import 'package:login_ui/signup.dart';

import 'main.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _MyAppState();
}

class _MyAppState extends State<LoginPage> {
  bool _isObscure = true;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF3E8E8),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children:  [
                const SizedBox(height: 15,),

                myLogo,
                const SizedBox(height: 10,),
                logoDescriptiveText,
                const SizedBox(height: 10,),
                lS('Login'),
                const SizedBox(height: 30,),
                textFieldBoxes('Email', Icons.email_sharp),
                const SizedBox(height: 15,),
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
                SizedBox(height: 15,),
                const Padding(
                  padding:EdgeInsets.only(left: 220),
                  child: Text('Forget Password?',
                    style: TextStyle(
                      color: Color(0xff5E2121),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 80,),

                const SizedBox(height: 30,),
                myButton('Login'),
                const SizedBox(height: 30,),
                Padding(padding: EdgeInsets.only(left:120,
                ),
                  child: Row(
                    children: [
                      Checkbox(
                          checkColor: Color(0xffE2B1B1),
                          activeColor: Colors.pink,
                          value: value, onChanged: (value)
                      {
                        setState((){
                          this.value=value!;
                        });
                      }),
                      const Text('Remember Me',
                        style:TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Doesn't have an account? ",
                  style:  TextStyle(
                    color: Color(0xff000000),
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Inter',
                  ),
                ),
                TextButton(
                    child:const Text(
                      'Sign Up',
                      style:  TextStyle(
                        color: Color(0xff850606),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
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
