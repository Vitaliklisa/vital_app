import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My notebook"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF000000),
        child: Text(
          'I hate cold',style: TextStyle(fontSize: 45.0,color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}


