import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @introPageFirstSliderTitle.
  ///
  /// In en, this message translates to:
  /// **'Ensure to keep track of your medicine'**
  String get introPageFirstSliderTitle;

  /// No description provided for @introPageFirstSliderDesc.
  ///
  /// In en, this message translates to:
  /// **'Enjoy the convenience of getting a better experience'**
  String get introPageFirstSliderDesc;

  /// No description provided for @introPageSecondSliderTitle.
  ///
  /// In en, this message translates to:
  /// **'Medicine Reminder'**
  String get introPageSecondSliderTitle;

  /// No description provided for @introPageSecondSliderDesc.
  ///
  /// In en, this message translates to:
  /// **'We will always remind your medication schedule. It is now our responsibility to protect your health.'**
  String get introPageSecondSliderDesc;

  /// No description provided for @introPageThirdSliderTitle.
  ///
  /// In en, this message translates to:
  /// **'Pharmacies nearby'**
  String get introPageThirdSliderTitle;

  /// No description provided for @introPageThirdSliderDesc.
  ///
  /// In en, this message translates to:
  /// **'You can always find pharmacies nearby your area easily.'**
  String get introPageThirdSliderDesc;

  /// No description provided for @introPageSkipButtonText.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get introPageSkipButtonText;

  /// No description provided for @introPageNextButtonText.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get introPageNextButtonText;

  /// No description provided for @introPageGetStartedButtonText.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get introPageGetStartedButtonText;

  /// No description provided for @bottomNavigationBarFeedText.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get bottomNavigationBarFeedText;

  /// No description provided for @bottomNavigationBarNewText.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get bottomNavigationBarNewText;

  /// No description provided for @bottomNavigationBarCalendarText.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get bottomNavigationBarCalendarText;

  /// No description provided for @feedPageHealthConditionStatementText.
  ///
  /// In en, this message translates to:
  /// **'How is your health today?'**
  String get feedPageHealthConditionStatementText;

  /// No description provided for @feedPageRemindersCountText.
  ///
  /// In en, this message translates to:
  /// **'You\'ve {count} notifications'**
  String feedPageRemindersCountText(int? count);

  /// No description provided for @feedPageNoReminderCountText.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any notifications'**
  String get feedPageNoReminderCountText;

  /// No description provided for @feedPageVisitRemindersText.
  ///
  /// In en, this message translates to:
  /// **'Visit reminders'**
  String get feedPageVisitRemindersText;

  /// No description provided for @feedPagePharmaciesNearbyTitle.
  ///
  /// In en, this message translates to:
  /// **'Pharmacies nearby'**
  String get feedPagePharmaciesNearbyTitle;

  /// No description provided for @feedPageFindingPharmaciesNearbyText.
  ///
  /// In en, this message translates to:
  /// **'Finding Pharmacies Nearby'**
  String get feedPageFindingPharmaciesNearbyText;

  /// No description provided for @feedPagePharmacyClosedText.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get feedPagePharmacyClosedText;

  /// No description provided for @feedPagePharmacyOpenText.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get feedPagePharmacyOpenText;

  /// No description provided for @customTimeIndicatorNow.
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get customTimeIndicatorNow;

  /// No description provided for @customTimeIndicatorNowMinutesLater.
  ///
  /// In en, this message translates to:
  /// **'minutes later'**
  String get customTimeIndicatorNowMinutesLater;

  /// No description provided for @customTimeIndicatorNowHoursLater.
  ///
  /// In en, this message translates to:
  /// **'hours later'**
  String get customTimeIndicatorNowHoursLater;

  /// No description provided for @customTimeIndicatorNowHourLater.
  ///
  /// In en, this message translates to:
  /// **'hour later'**
  String get customTimeIndicatorNowHourLater;

  /// No description provided for @customTimeIndicatorMinuteLater.
  ///
  /// In en, this message translates to:
  /// **'minute later'**
  String get customTimeIndicatorMinuteLater;

  /// No description provided for @monthPickerDialogSelectMonthTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Month'**
  String get monthPickerDialogSelectMonthTitle;

  /// No description provided for @monthPickerDialogSelectButtonText.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get monthPickerDialogSelectButtonText;

  /// No description provided for @monthPickerDialogCancelButtonText.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get monthPickerDialogCancelButtonText;

  /// No description provided for @calendarPageActivitiesTitle.
  ///
  /// In en, this message translates to:
  /// **'Activities'**
  String get calendarPageActivitiesTitle;

  /// No description provided for @createMedicinePageFormMedicineNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Medicine name'**
  String get createMedicinePageFormMedicineNameTitle;

  /// No description provided for @createMedicinePageFormMedicineNameHintText.
  ///
  /// In en, this message translates to:
  /// **'Please, enter medicine name...'**
  String get createMedicinePageFormMedicineNameHintText;

  /// No description provided for @createMedicinePageFormMedicineAmountTitle.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get createMedicinePageFormMedicineAmountTitle;

  /// No description provided for @createMedicinePageFormMedicineTypeTitle.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get createMedicinePageFormMedicineTypeTitle;

  /// No description provided for @createMedicinePageFormMedicineWhenTitle.
  ///
  /// In en, this message translates to:
  /// **'When'**
  String get createMedicinePageFormMedicineWhenTitle;

  /// No description provided for @createMedicinePageFormMedicineHowLongTitle.
  ///
  /// In en, this message translates to:
  /// **'How long?'**
  String get createMedicinePageFormMedicineHowLongTitle;

  /// No description provided for @createMedicinePageFormNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get createMedicinePageFormNotificationsTitle;

  /// No description provided for @createMedicinePageFormSaveChangesButton.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get createMedicinePageFormSaveChangesButton;

  /// No description provided for @selectMedicineTypeDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Type'**
  String get selectMedicineTypeDialogTitle;

  /// No description provided for @selectMedicineTypeDialogTablet.
  ///
  /// In en, this message translates to:
  /// **'Tablet'**
  String get selectMedicineTypeDialogTablet;

  /// No description provided for @selectMedicineTypeDialogLiquid.
  ///
  /// In en, this message translates to:
  /// **'Liquid'**
  String get selectMedicineTypeDialogLiquid;

  /// No description provided for @calendarMedicineTabletAmount.
  ///
  /// In en, this message translates to:
  /// **'tab'**
  String get calendarMedicineTabletAmount;

  /// No description provided for @calendarMedicineLiquidAmount.
  ///
  /// In en, this message translates to:
  /// **'mg'**
  String get calendarMedicineLiquidAmount;

  /// No description provided for @errorOrEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get errorOrEmptyTitle;

  /// No description provided for @errorOrEmptyDesc.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find what you searched for. Try again.'**
  String get errorOrEmptyDesc;

  /// No description provided for @successSnackbarTitle.
  ///
  /// In en, this message translates to:
  /// **'Well done!'**
  String get successSnackbarTitle;

  /// No description provided for @errorSnackbarTitle.
  ///
  /// In en, this message translates to:
  /// **'Oh snap!'**
  String get errorSnackbarTitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
