import 'package:flutter/material.dart';

import 'constants.dart';

class SignInWithButton extends StatelessWidget {
  SignInWithButton({this.imagePath , this.printText});
  final String printText;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print(printText);},
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow:[ BoxShadow(
              color: Colors.yellowAccent,
              offset: Offset(0,2),
              blurRadius: 10.0,
            ),
            ],
            image: DecorationImage(
              image: AssetImage(imagePath),
            )
        ),
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  InputBox(
      {this.hintText,
        this.inputType,
        this.icon,
        this.obscureText,
        this.upperText});
  final String hintText;
  final String upperText;
  final IconData icon;
  final bool obscureText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upperText,
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            obscureText: obscureText,
            keyboardType: inputType,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(icon, color: Colors.white),
              hintText: hintText,
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
