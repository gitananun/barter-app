class MissingRouteException implements Exception {
  MissingRouteException(this.message);
  final String message;

  @override
  String toString() => "Route with the name $message doesn't exists";
}
