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

  /// `Flutter intl`
  String get title {
    return Intl.message(
      'Flutter intl',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `You have click the button many times`
  String get content {
    return Intl.message(
      'You have click the button many times',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `UserName`
  String get username {
    return Intl.message(
      'UserName',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `PassWord`
  String get password {
    return Intl.message(
      'PassWord',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Season`
  String get season {
    return Intl.message(
      'Season',
      name: 'season',
      desc: '',
      args: [],
    );
  }

  /// `Spring`
  String get spring {
    return Intl.message(
      'Spring',
      name: 'spring',
      desc: '',
      args: [],
    );
  }

  /// `Summer`
  String get summer {
    return Intl.message(
      'Summer',
      name: 'summer',
      desc: '',
      args: [],
    );
  }

  /// `Autumn`
  String get autumn {
    return Intl.message(
      'Autumn',
      name: 'autumn',
      desc: '',
      args: [],
    );
  }

  /// `Winter`
  String get winter {
    return Intl.message(
      'Winter',
      name: 'winter',
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
      Locale.fromSubtags(languageCode: 'zh'),
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
