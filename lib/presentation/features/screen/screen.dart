import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:vital_app/presentation/features/screen/screen_model.dart';
import 'package:vital_app/presentation/features/screen/screen_view.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> implements ScreenView {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ScreenModel(this),
      child: Consumer<ScreenModel>(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: model.backgroundColor,
              title: Text("My site",
                style: TextStyle(fontSize: 45.0, color: model.textColor,),),
              centerTitle: true,
              actions: [
                FloatingActionButton(
                  backgroundColor: model.buttonColor,
                  onPressed: model.onFabPressed,
                )
              ],
            ),
            body: Container(
              alignment: Alignment.center,
              color: model.backgroundColor,
              child: Text(
                'I hate cold',
                style: TextStyle(fontSize: 45.0, color: model.textColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
