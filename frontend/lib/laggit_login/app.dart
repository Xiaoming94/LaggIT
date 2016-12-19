import 'package:angular2/core.dart';
import 'dart:html';

@Component(
  selector: 'laggit-login',
  styleUrls: const ['app.css'],
  templateUrl: 'app.html',
  directives: const [],
)
class LoginModule {
  void toggleLoginBox() {
    querySelector('#login-background').classes.toggle('background-hidden');
    querySelector('#login-dropdown').classes.toggle('box-hidden');
  }

  void stopPropagation(MouseEvent event) {
    event.stopPropagation();
  }
}
