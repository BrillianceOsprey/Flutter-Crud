import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

enum Level { info, success, warning, error, debug }

class LoggerMs {
  LoggerMs._();

  static void i(String tag, Object? object) {
    print(tag, object, level: Level.info);
  }

  static void clap(String tag, Object? object) {
    print(tag, object, level: Level.success);
  }

  static void e(String tag, Object? object) {
    print(tag, object, level: Level.error);
  }

  static void print(String tag, Object? object, {Level level = Level.info}) {
    if (!kReleaseMode) {
      String color = '\u001b[37;1m';
      switch (level) {
        case Level.info:
          color = '\x1B[34m';
          break;
        case Level.success:
          color = '\x1B[32m';
          break;
        case Level.warning:
          color = '\x1B[33m';
          break;
        case Level.error:
          color = '\x1B[31m';
          break;
        case Level.debug:
          color = '\x1B[37m';
          break;
      }

      developer.log('$color[$tag]: $object\x1B[0m');
    }
  }
}
