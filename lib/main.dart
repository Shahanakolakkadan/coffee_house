import 'package:coffee_house/layout/home.dart';
import 'package:coffee_house/layout/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => login(),
    },
  ));
}

