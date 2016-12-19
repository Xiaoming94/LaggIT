import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'event.dart';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

@Injectable()
class EventService {
  static const String _url = 'http://localhost:8082/events';
  final BrowserClient _http;

  EventService(this._http);

  //Future<List<LEvent>> getEvents() async => mockEvents;
  Future<List<LEvent>> getEvents() async {
    try {
      final String response = await _http.get(_url);
      final List<LEvent> events = _extractData(response)
          .map((value) => new LEvent.fromJson(value))
          .toList();
      return events;
    } catch (e) {
      throw _handleError(e);
    }
    //return HttpRequest.getString(url).then((res) => onDataLoaded(res));
  }

  static String _extractData(Response res) {
    var body = JSON.decode(res.body);
    return body;
  }

  Exception _handleError(dynamic e) {
    print(e); // log to console instead
    return new Exception('Server error; cause: $e');
  }
}
