import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Ok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ukrsasalisha"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hi ABA do you do veiw',
            ),
          ],
        ),
      ),
    );
  }
}
