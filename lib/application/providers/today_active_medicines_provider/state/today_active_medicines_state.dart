import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infastructure/services/drift_service/drift_service.dart';

part 'today_active_medicines_state.freezed.dart';

@freezed
class TodayActiveMedicinesState with _$TodayActiveMedicinesState {
  const factory TodayActiveMedicinesState.initial() =
      _TodayActiveMedicinesInitial;
  const factory TodayActiveMedicinesState.loading() =
      _TodayActiveMedicinesLoading;
  const factory TodayActiveMedicinesState.empty() = _TodayActiveMedicinesEmpty;
  const factory TodayActiveMedicinesState.error() = _TodayActiveMedicinesError;
  const factory TodayActiveMedicinesState.loaded(
      List<MedicineData>? medicines) = _TodayActiveMedicinesLoaded;
}
