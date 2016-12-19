import 'package:angular2/core.dart';
import 'package:http/browser_client.dart';

@Injectable()
BrowserClient newBrowserClient() => new BrowserClient();
