extension UriParseExtension on String? {
  Uri get parsedUri => Uri.parse(toString());
}
