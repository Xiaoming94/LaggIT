import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'event_service.dart';
import 'event.dart';

@Component(
  selector: 'laggit-booking',
  styleUrls: const ['app.css'],
  templateUrl: 'app.html',
)
class BookingModule implements OnInit {
  List<LEvent> events;
  final EventService _eventService;

  BookingModule(this._eventService);

  Future<Null> getEvents() async {
    try {
      events = await _eventService.getEvents();
    } catch (e) {
      errorMessage = e.toString();
    }
  }

  @override
  ngOnInit() {
    getEvents();
  }
}
