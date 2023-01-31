import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vital_app/presentation/features/screen/screen_view.dart';

class ScreenModel with ChangeNotifier {
  Color _black = Color(0xFF000000);
  Color _white = Color(0xFFFFFFFF);

  late Color _backgroundColor = _black;
  Color get backgroundColor => _backgroundColor;

  late Color _textColor = _white;

  Color get textColor => _textColor;

  late Color _buttonColor = _white;

  Color get buttonColor => _buttonColor;

  //do not remove
  ScreenView _screenView;

  ScreenModel(this._screenView);

  void onFabPressed() {
    _changeTextColor();
    _changeBackgroundColor();
    _changeButtonColor();
    notifyListeners();
  }

  void _changeBackgroundColor() {
    if (_backgroundColor == _white) {
      _backgroundColor = _black;
    } else {
      _backgroundColor = _white;
    }
  }

  void _changeButtonColor() {
    if (_buttonColor == _white) {
      _buttonColor = _black;
    } else {
      _buttonColor = _white;
    }
  }

  void _changeTextColor() {
    if (_textColor == _white) {
      _textColor = _black;
    } else {
      _textColor = _white;
    }
  }

  Future<void> onGitHubPressed() async {
    await canLaunch('https://github.com/Vitaliklisa')
        ? await launch('https://github.com/Vitaliklisa')
        : _screenView.displayMessage('cannot open github');
  }

  Future<void> onLinkedinPressed() async {
    await canLaunch('https://www.linkedin.com/in/vitaliikhomenko/')
        ? await launch('https://www.linkedin.com/in/vitaliikhomenko/')
        : _screenView.displayMessage('cannot open linkedin');
  }

  Future<void> onFacebookPressed() async {
    await canLaunch('https://www.facebook.com/VitalKhomenko')
        ? await launch('https://www.facebook.com/VitalKhomenko')
        : _screenView.displayMessage('cannot open facebook');
  }
}
