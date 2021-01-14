import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

//label color
final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

//box color
final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFFC6B299).withOpacity(0.3),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.yellowAccent.withOpacity(0.1),
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);