import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smf_core/smf_core.dart';

import 'app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialization prefs
  await initialize();
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
