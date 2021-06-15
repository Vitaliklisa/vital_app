import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vital_app/app_colors.dart';
import 'package:vital_app/ok.dart';

class VitalikApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first beta',
      theme: ThemeData(primarySwatch: AppColors.primarySwatch),
      home: Ok(),
    );
  }
}
