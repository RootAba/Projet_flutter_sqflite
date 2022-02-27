import 'package:flutter/material.dart';
import 'package:ba_tai/home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    home: homep(),
  ));
}