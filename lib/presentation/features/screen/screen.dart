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
          return Scaffold(backgroundColor: model.backgroundColor,
            appBar: buildAppBar(model),
            body: RawScrollbar(
              thumbColor: Color(0xFF150A28),
              isAlwaysShown: true,
              radius: Radius.circular(20),
              thickness: 5,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 100),
                        Image.asset('assets/images/seller.jpg'),
                        Image.asset('assets/images/anon.jpg'),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 200),
                          Text(
                            'I hate cold',
                            style: TextStyle(
                              fontSize: 45.0,
                              color: model.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar buildAppBar(ScreenModel model) {
    return AppBar(
      backgroundColor: model.backgroundColor,
      title: Text(
        "My site",
        style: TextStyle(
          fontSize: 45.0,
          color: model.textColor,
        ),
      ),
      centerTitle: true,
      actions: [
        FloatingActionButton(
          backgroundColor: model.buttonColor,
          onPressed: model.onFabPressed,
        )
      ],
    );
  }
}
