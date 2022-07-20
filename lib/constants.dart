import 'package:login_ui/login.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as Path;
var myLogo= Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Center(
      child: Image(
        image: AssetImage('images/mylogo.png'),
        height: 70,
        width: 95,
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('PRIDE',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xff594040),
              fontFamily: 'PTSerif'
          ),
        ),
        Text('Medics',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w200,
            color: Color(0xffC33E3E),
            fontFamily: 'Inter',
          ),
        ),
      ],
    ),
  ],
);
const logoDescriptiveText=Text('Get started with Pride Medics,\nEnjoy healthy life',
  textAlign: TextAlign.center,
  style: TextStyle(
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w200,
  ),
);
Widget lS(String text)
{
  return  Text('$text',
    style: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 30, fontFamily: 'PTSerif',color: Color(0xff850606),
    ),
  );
}
Widget textFieldBoxes(String hint,IconData icon)
{
  return Padding(
    padding: const EdgeInsets.only(left: 15,right: 15),
    child: TextFormField(
      decoration: InputDecoration(
        fillColor: Color(0xffE2B1B1),
        filled: true,
        hintText: '$hint',
        prefixIcon: Icon(icon),
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
  );
}
Widget myButton(String text)
{
  return Container(

    height: 43,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xff9C5252),
    ),
    child: MaterialButton(
      onPressed: (){

      },
      height: 40,
      child: Text('$text',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    ),
  );
}



