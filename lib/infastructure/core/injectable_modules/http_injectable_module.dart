import 'package:http/http.dart' show Client;
import 'package:injectable/injectable.dart';

@module
abstract class HttpInjectableModule {
  @lazySingleton
  Client get client => Client();
}
