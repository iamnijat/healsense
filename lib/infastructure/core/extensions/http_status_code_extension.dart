import 'package:http/http.dart' show Response;

extension HttpResponseExtension on Response {
  bool get hasWrongCredentials => statusCode == 422;

  bool get tooManyRequests => statusCode == 429;

  bool get success => statusCode >= 200 && statusCode < 300;
}
