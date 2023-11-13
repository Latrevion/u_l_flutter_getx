import 'package:get/get.dart';
import 'language/ar.dart';
import 'language/en.dart';
import 'language/fr.dart';


class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar,
    'fr':fr
  };

}