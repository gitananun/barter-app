class SingleProductMiddleware {
  ///
  static bool isValid(dynamic arguments) {
    return arguments.runtimeType == int;
  }
}
