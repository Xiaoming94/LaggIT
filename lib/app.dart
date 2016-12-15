import 'package:angular2/core.dart';
import 'package:LaggIT/laggit_home/app.dart';
import 'package:LaggIT/laggit_info/app.dart';
import 'package:LaggIT/laggit_contact/app.dart';
import 'package:LaggIT/laggit_booking/app.dart';
import 'dart:js' as js;

@Component(
	selector: 'laggit',
	styleUrls: const ['app.css'],
	templateUrl: 'app.html',
	directives: const [
		HomeModule,
		InfoModule,
		ContactModule,
		BookingModule
	],
)

class LaggIT implements AfterContentInit {
	void ngAfterContentInit() {
		js.context.callMethod(r'$', ['#fullpage']).callMethod('fullpage', []);
	}
}
