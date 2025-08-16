// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get introPageFirstSliderTitle =>
      'Ensure to keep track of your medicine';

  @override
  String get introPageFirstSliderDesc =>
      'Enjoy the convenience of getting a better experience';

  @override
  String get introPageSecondSliderTitle => 'Medicine Reminder';

  @override
  String get introPageSecondSliderDesc =>
      'We will always remind your medication schedule. It is now our responsibility to protect your health.';

  @override
  String get introPageThirdSliderTitle => 'Pharmacies nearby';

  @override
  String get introPageThirdSliderDesc =>
      'You can always find pharmacies nearby your area easily.';

  @override
  String get introPageSkipButtonText => 'Skip';

  @override
  String get introPageNextButtonText => 'Next';

  @override
  String get introPageGetStartedButtonText => 'Get Started';

  @override
  String get bottomNavigationBarFeedText => 'Feed';

  @override
  String get bottomNavigationBarNewText => 'New';

  @override
  String get bottomNavigationBarCalendarText => 'Calendar';

  @override
  String get feedPageHealthConditionStatementText =>
      'How is your health today?';

  @override
  String feedPageRemindersCountText(int? count) {
    return 'You\'ve $count notifications';
  }

  @override
  String get feedPageNoReminderCountText => 'You don\'t have any notifications';

  @override
  String get feedPageVisitRemindersText => 'Visit reminders';

  @override
  String get feedPagePharmaciesNearbyTitle => 'Pharmacies nearby';

  @override
  String get feedPageFindingPharmaciesNearbyText => 'Finding Pharmacies Nearby';

  @override
  String get feedPagePharmacyClosedText => 'Closed';

  @override
  String get feedPagePharmacyOpenText => 'Open';

  @override
  String get customTimeIndicatorNow => 'now';

  @override
  String get customTimeIndicatorNowMinutesLater => 'minutes later';

  @override
  String get customTimeIndicatorNowHoursLater => 'hours later';

  @override
  String get customTimeIndicatorNowHourLater => 'hour later';

  @override
  String get customTimeIndicatorMinuteLater => 'minute later';

  @override
  String get monthPickerDialogSelectMonthTitle => 'Select Month';

  @override
  String get monthPickerDialogSelectButtonText => 'Select';

  @override
  String get monthPickerDialogCancelButtonText => 'Cancel';

  @override
  String get calendarPageActivitiesTitle => 'Activities';

  @override
  String get createMedicinePageFormMedicineNameTitle => 'Medicine name';

  @override
  String get createMedicinePageFormMedicineNameHintText =>
      'Please, enter medicine name...';

  @override
  String get createMedicinePageFormMedicineAmountTitle => 'Amount';

  @override
  String get createMedicinePageFormMedicineTypeTitle => 'Type';

  @override
  String get createMedicinePageFormMedicineWhenTitle => 'When';

  @override
  String get createMedicinePageFormMedicineHowLongTitle => 'How long?';

  @override
  String get createMedicinePageFormNotificationsTitle => 'Notifications';

  @override
  String get createMedicinePageFormSaveChangesButton => 'Save changes';

  @override
  String get selectMedicineTypeDialogTitle => 'Select Type';

  @override
  String get selectMedicineTypeDialogTablet => 'Tablet';

  @override
  String get selectMedicineTypeDialogLiquid => 'Liquid';

  @override
  String get calendarMedicineTabletAmount => 'tab';

  @override
  String get calendarMedicineLiquidAmount => 'mg';

  @override
  String get errorOrEmptyTitle => 'No results found';

  @override
  String get errorOrEmptyDesc =>
      'We couldn\'t find what you searched for. Try again.';

  @override
  String get successSnackbarTitle => 'Well done!';

  @override
  String get errorSnackbarTitle => 'Oh snap!';
}
