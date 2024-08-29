

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DemoLocalizations{
  DemoLocalizations(this.isZh);
  bool isZh = false;
  static DemoLocalizations of(BuildContext context){
    return Localizations.of(context, DemoLocalizations);
  }
  String get title{
    return isZh ? "Flutter应用" : "Flutter APP";
  }
}

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalizations>{
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ["en","zh"].contains(locale.languageCode);
  }

  @override
  Future<DemoLocalizations> load(Locale locale) {
    // TODO: implement load
    print("$locale");
    return SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale.languageCode == "zh"));
  }

  @override
  bool shouldReload(covariant DemoLocalizationsDelegate old) {
    // TODO: implement shouldReload
    return false;
  }

}