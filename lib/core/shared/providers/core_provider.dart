import 'package:crud_flutter/core/infrastructure/sembast_database.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider(
  (ref) => Dio(),
);

final sembaseProvider = Provider(
  (ref) => SembastDatabase(),
);
