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
