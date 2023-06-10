import 'package:get/route_manager.dart';

import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "مرحبا", "2": "الاكثر شعبية"},
        "en": {"1": "choose language", "2": "Most Popular"}
      };
}
