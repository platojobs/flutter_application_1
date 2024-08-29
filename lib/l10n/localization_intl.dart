import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'messages_all.dart';
class TDemoLocalizations {
  static Future<TDemoLocalizations> load(Locale locale){
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((value){
       Intl.defaultLocale = localeName;
       return TDemoLocalizations();
    });
  }

  static TDemoLocalizations of(BuildContext context){
    return Localizations.of(context, TDemoLocalizations);
  }

  String get title {
    return Intl.message(
      "Flutter APP",
      name: "title",
      desc: "Title for the demo application",
    );
  }
  
   remainingEmailsMessage(int howMany) => Intl.plural(howMany,
     zero: "There are no emails left",
     one: "There is $howMany email left",
     other: "There are $howMany emails left",
     name: "remainingEmailsMessage",
     args: [howMany],
     desc: "How many emails remain after archiving.",
     examples: const {'howMany': 42, 'userName': 'Fred'},
   );
  
  
}

class TDemoLocalizationsDelegate extends LocalizationsDelegate<TDemoLocalizations>{
  const TDemoLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ["en","zh"].contains(locale.languageCode);
  }

  @override
  Future<TDemoLocalizations> load(Locale locale) {
    // TODO: implement load
    return TDemoLocalizations.load(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<TDemoLocalizations> old) {
    // TODO: implement shouldReload
     return false;
  }

}