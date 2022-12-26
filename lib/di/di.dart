import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false)
FutureOr<GetIt> setupLocator() => init(getIt);
