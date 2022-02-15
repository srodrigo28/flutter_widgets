import 'package:flutter/material.dart';
main(){
  runApp(Container(
    child: const Center(
      child: Text(
          'Flutterando',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red, fontSize: 40.0),
      ),
    ),
  ));
}