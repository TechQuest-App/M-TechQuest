// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Embark on a Journey of Discovery`
  String get titleOnboarding_1 {
    return Intl.message(
      'Embark on a Journey of Discovery',
      name: 'titleOnboarding_1',
      desc: '',
      args: [],
    );
  }

  /// `Master New Skills with Expert Guidance`
  String get titleOnboarding_2 {
    return Intl.message(
      'Master New Skills with Expert Guidance',
      name: 'titleOnboarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Achieve Your Goals with Confidence`
  String get titleOnboarding_3 {
    return Intl.message(
      'Achieve Your Goals with Confidence',
      name: 'titleOnboarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Explore diverse courses and expand your knowledge horizon.`
  String get descriptionOnboarding_1 {
    return Intl.message(
      'Explore diverse courses and expand your knowledge horizon.',
      name: 'descriptionOnboarding_1',
      desc: '',
      args: [],
    );
  }

  /// `Learn hands-on skills from industry leaders.`
  String get descriptionOnboarding_2 {
    return Intl.message(
      'Learn hands-on skills from industry leaders.',
      name: 'descriptionOnboarding_2',
      desc: '',
      args: [],
    );
  }

  /// `Track your progress and earn certifications.`
  String get descriptionOnboarding_3 {
    return Intl.message(
      'Track your progress and earn certifications.',
      name: 'descriptionOnboarding_3',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message(
      'Skip',
      name: 'Skip',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `log In `
  String get login {
    return Intl.message(
      'log In ',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Your learning journey awaits.\n Login now!`
  String get Your_learning_journey_Login {
    return Intl.message(
      'Your learning journey awaits.\n Login now!',
      name: 'Your_learning_journey_Login',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get Wishlist {
    return Intl.message(
      'Wishlist',
      name: 'Wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Clips`
  String get Clips {
    return Intl.message(
      'Clips',
      name: 'Clips',
      desc: '',
      args: [],
    );
  }

  /// `My courses`
  String get Courses {
    return Intl.message(
      'My courses',
      name: 'Courses',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get Reviews {
    return Intl.message(
      'Reviews',
      name: 'Reviews',
      desc: '',
      args: [],
    );
  }

  /// `Rate Application`
  String get RateApplication {
    return Intl.message(
      'Rate Application',
      name: 'RateApplication',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get Security {
    return Intl.message(
      'Security',
      name: 'Security',
      desc: '',
      args: [],
    );
  }

  /// `Edit your password`
  String get EditYourPassword {
    return Intl.message(
      'Edit your password',
      name: 'EditYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get name {
    return Intl.message(
      'name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `address`
  String get address {
    return Intl.message(
      'address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Shoes Size`
  String get ShoesSize {
    return Intl.message(
      'Shoes Size',
      name: 'ShoesSize',
      desc: '',
      args: [],
    );
  }

  /// `FaceID`
  String get FaceID {
    return Intl.message(
      'FaceID',
      name: 'FaceID',
      desc: '',
      args: [],
    );
  }

  /// `Two-step verification`
  String get TwoStepVerification {
    return Intl.message(
      'Two-step verification',
      name: 'TwoStepVerification',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get PaymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'PaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get ShippingAddress {
    return Intl.message(
      'Shipping Address',
      name: 'ShippingAddress',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get Notifications {
    return Intl.message(
      'Notifications',
      name: 'Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get SignOut {
    return Intl.message(
      'Sign Out',
      name: 'SignOut',
      desc: '',
      args: [],
    );
  }

  /// `Your Currently Points`
  String get YourCurrentlyPoints {
    return Intl.message(
      'Your Currently Points',
      name: 'YourCurrentlyPoints',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get Email_Address {
    return Intl.message(
      'Email Address',
      name: 'Email_Address',
      desc: '',
      args: [],
    );
  }

  /// ` Sign Up`
  String get Sign_Up {
    return Intl.message(
      ' Sign Up',
      name: 'Sign_Up',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get Log_In {
    return Intl.message(
      'Log In',
      name: 'Log_In',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get Forget_Password {
    return Intl.message(
      'Forget Password',
      name: 'Forget_Password',
      desc: '',
      args: [],
    );
  }

  /// `By logging, you agree to our  `
  String get by_logging_you {
    return Intl.message(
      'By logging, you agree to our  ',
      name: 'by_logging_you',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_Conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_Conditions',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `PrivacyPolicy`
  String get privacyPolicy {
    return Intl.message(
      'PrivacyPolicy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Don’t Have An Account? `
  String get Dont_Have {
    return Intl.message(
      'Don’t Have An Account? ',
      name: 'Dont_Have',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account yet? Sign Up `
  String get Already_have {
    return Intl.message(
      'Already have an account yet? Sign Up ',
      name: 'Already_have',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
