import 'package:angular2/core.dart';
import 'package:LaggIT/laggit_home/app.dart';
import 'package:LaggIT/laggit_info/app.dart';
import 'package:LaggIT/laggit_booking/app.dart';
import 'package:LaggIT/laggit_contact/app.dart';
import 'package:LaggIT/laggit_login/app.dart';
import 'laggit_booking/event_service.dart';
import 'package:LaggIT/browser_client.dart';
import 'package:LaggIT/procced.dart';

@Component(
  selector: 'laggit',
  styleUrls: const ['app.css'],
  templateUrl: 'app.html',
  directives: const [
    HomeModule,
    InfoModule,
    BookingModule,
    ContactModule,
    LoginModule
  ],
  providers: const [
    EventService,
    const Provider(BrowserClient, useFactory: newBrowserClient),
    FullpageService
  ],
)
class LaggIT implements AfterContentInit {
  final FullpageService _fullpageService;
  LaggIT(this._fullpageService);

  void ngAfterContentInit() {
    _fullpageService.load();
  }
}
