import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:dartson/dartson.dart';
import 'event.dart';
import 'mock_event.dart';

@Injectable()
class EventService {
  Future<List<LEvent>> getEvents() async => mockEvents;
  Future<List<LEvent>> getEventsjs() async {
    String url = 'http://localhost/data';
    return HttpRequest.getString(url).then((res) => onDataLoaded(res));
  }

  static List<LEvent> onDataLoaded(String json) {
    var dson = new Dartson.JSON();
    return dson.decode(json, new LEvent(), true);
  }
}
