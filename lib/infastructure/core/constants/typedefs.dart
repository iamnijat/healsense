import 'package:flutter_gen/gen_l10n/app_localizations.dart'
    show AppLocalizations;
import 'package:fpdart/fpdart.dart';
import 'package:healsense/domain/core/error/failure_result.dart';
import 'package:healsense/domain/core/success/success_result.dart';

import '../utils/time_later/custom_time_later_localization_messages.dart';

typedef IsLoading = bool;

typedef IsNotified = bool;

typedef Loc = AppLocalizations?;

typedef TimeMessages = CustomTimeLaterLocalizationMessages;

typedef EitherResult = Either<FailureResult, SuccessResult>;
