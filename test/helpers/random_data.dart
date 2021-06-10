import 'dart:math';

import 'package:flutter_good/search/domain/types.dart';

const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
final random = Random();

String getRandomString([int length = 8]) =>
    String.fromCharCodes(Iterable.generate(length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));

Json getRandomJsonMap({int length = 42, int maxKeyLength = 32, int maxValueLength = 1024}) {

  final keys = Iterable.generate(length, (_) => getRandomString(random.nextInt(maxKeyLength - 1) + 1));

  return { for (var item in keys) item : getRandomString(random.nextInt(maxValueLength)) };
}
