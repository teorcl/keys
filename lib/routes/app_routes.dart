import 'package:flutter/material.dart';
import 'package:keys/pages/key_page.dart';
import 'package:keys/pages/list_keys_page.dart';
import 'package:keys/pages/moveble_widget_page.dart';
import 'package:keys/pages/numbers_page.dart';

import '../pages/animated_text.dart';
import '../pages/list_page.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.animatedText: (_) => const AnimatedText(),
    Routes.keyPage: (_) => const KeyPage(),
    Routes.listKeyPage: (_) => const ListKeysPage(),
    Routes.numbersPage: (_) => const NumbersPage(),
    Routes.movebleWidgetPage: (_) => const MovebleWidgetPage(),
    Routes.listPage: (_) => const ListPage(),
  };
}
