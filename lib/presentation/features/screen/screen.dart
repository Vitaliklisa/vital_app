import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:vital_app/presentation/features/screen/screen_model.dart';
import 'package:vital_app/presentation/features/screen/screen_view.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> implements ScreenView {
  @override
  void displayMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ScreenModel(this),
      child: Consumer<ScreenModel>(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: model.backgroundColor,
            appBar: AppBar(
              backgroundColor: model.backgroundColor,
              title: Text(
                "About me",
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
            ),
            body: RawScrollbar(
              thumbColor: Color(0xFF150A28),
              isAlwaysShown: true,
              radius: Radius.circular(20),
              thickness: 5,
              child: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: model.onGitHubPressed,
                            child: SvgPicture.asset('assets/images/github.svg'),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: model.onLinkedinPressed,
                            child: SvgPicture.asset(
                                'assets/images/linkedin.svg',
                                color: Colors.blue),
                          ),
                          FloatingActionButton(
                              backgroundColor: Colors.transparent,
                              onPressed: model.onGitHubPressed,
                              child: SvgPicture.asset('assets/images/svg.'))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/myself.jpg',
                            height: 150,
                          ),
                          Text(
                            'I hate cold',
                            style: TextStyle(
                                fontSize: 45.0, color: model.textColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
