import 'dart:ui';

Locale getLocale(String localeKey) {
  return mapLocales[localeKey] ?? defaultLocale;
}

const localePath = 'assets/translations';

const defaultLocale = Locale('en', 'US');

const mapLocales = {
  'en_US': Locale('en', 'US'),
  'id_ID': Locale('id', 'ID'),
};
