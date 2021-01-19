import 'package:barter/annotation.dart';
import 'package:barter/app/middlewares/MiddlewareInterface.dart';

class ValidHomeScreenData implements MiddlewareInterface {
  @override
  bool handle(@middlewareArgument dynamic args) => args is String || args == null;
}
