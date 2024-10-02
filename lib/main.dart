import 'package:easy_localization/easy_localization.dart';
import 'package:test_beauty_city/app_ex.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setUp();
  runApp(const Application());
}

