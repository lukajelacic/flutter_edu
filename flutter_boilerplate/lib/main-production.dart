import 'package:flutter_boilerplate/all.dart';
import 'package:flutter_boilerplate/main.dart' as app;
import 'package:flutter_boilerplate/flavors.dart';

Future main() async {
  F.appFlavor = Flavor.PRODUCTION;
  ENVIRONMENT = EnvironmentType.production;
  await app.main();
}