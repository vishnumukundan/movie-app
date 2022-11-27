import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> prefInit() async {
  return await SharedPreferences.getInstance();
}

Future<void> setIconIndex(int index) async {
  final pref = await SharedPreferences.getInstance();
  pref.setInt('indexKey', index);
  log('Set index to $index ');
}

Future<int> getIconIndex() async {
  final pref = await SharedPreferences.getInstance();
  final getIndexKey = pref.getInt('indexKey');
  if (getIndexKey != null) {
    return getIndexKey;
  }
  return 0;
}
