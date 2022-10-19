import 'package:crud_flutter/core/shared/utils/log_functions.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:path/path.dart';

class SembastDatabase {
  static const String tag = 'SembastDatabase';

  late Database _instance;
  Database get instance => _instance;

  bool _hasBeenInitialized = false;

  Future<void> init() async {
    LoggerMs.clap(tag, 'Initialize sembast database...');

    if (_hasBeenInitialized) {
      LoggerMs.clap(tag, 'Sembast database is already initialized.');
      return;
    }
    _hasBeenInitialized = true;

    final dbDirectory = await getApplicationDocumentsDirectory();
    dbDirectory.create(recursive: true);
    final dbPath = join(dbDirectory.path, 'news_blog.sembast');
    _instance = await databaseFactoryIo.openDatabase(dbPath);

    LoggerMs.clap(
        tag, 'Initialized sembast database success at ${_instance.path}');
  }
}
