import 'dart:async';
import 'package:angular2/core.dart';
import 'event.dart';
import 'mock_event.dart';

@Injectable()
class EventService {
  Future<List<LEvent>> getEvents() async => mockEvents;
}
