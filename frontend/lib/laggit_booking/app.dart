import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'event_service.dart';
import 'event.dart';
import 'package:LaggIT/procced.dart';

@Component(
  selector: 'laggit-booking',
  styleUrls: const ['app.css'],
  templateUrl: 'app.html',
)
class BookingModule implements OnInit {
  List<LEvent> events;
  final FullpageService _fullpageService;
  final EventService _eventService;

  BookingModule(this._eventService, this._fullpageService);

  Future<Null> getEvents() async {
    try {
      events = await _eventService.getEvents();
    } catch (e) {
      errorMessage = e.toString();
    }
  }

  @override
  ngOnInit() {
    _fullpageService.waitForMe(getEvents());
  }
}
