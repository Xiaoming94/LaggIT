import 'dart:async';
import 'package:angular2/core.dart';
import 'dart:js' as js;

@Injectable()
class FullpageService {
  List<Future> _waitFor = new List<Future>();

  void waitForMe(Future f) {
    _waitFor.add(f);

    print("fullpage blocker added");
  }

  Future<Null> load() async {
    print("fullpage waiting");
    for (Future f in _waitFor) {
      await f;
    }

    print("fullpage done waiting");
    _loadFullpage();
  }

  static void _loadFullpage() {
    print("loading fullpage");
    js.context.callMethod("loadFullpage");
  }
}
