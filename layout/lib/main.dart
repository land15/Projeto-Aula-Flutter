import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout/Layout.dart';

void main() => runApp(MeuLayout());

class MeuLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout basico" ,     
      home: Scaffold(
        body: Layout(),
      ),
      
    );
  }
}
