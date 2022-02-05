
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vital_app/presentation/features/screen/screen.dart';
import 'package:vital_app/presentation/values/app_colors.dart';

class VitalikApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vital site',
      theme: ThemeData(primarySwatch: AppColors.primarySwatch),
      home: Screen(),
    );
  }
}
