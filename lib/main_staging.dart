import 'package:wetransfer/app/app.dart';
import 'package:wetransfer/bootstrap.dart';
import 'package:wetransfer/core/config.dart';

void main() {
  bootstrap(
    (env) => App(
      env: env,
    ),
    Environment.staging,
  );
}
