import 'package:flutter/material.dart';
class AppTheme{

  static const TextStyle display1 = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontSize: 34,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2
  );
  static const TextStyle display2 = TextStyle(
    fontFamily: 'Poppins',
    color: Colors.black,
    fontSize: 28,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.1
  );
  static final TextStyle heading = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w900,
    fontSize: 34,
    color: Colors.white.withOpacity(1),
    letterSpacing: 1.2,
  );

  static final TextStyle subHeading = TextStyle(
    inherit: true,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.white.withOpacity(0.8),
  );





}