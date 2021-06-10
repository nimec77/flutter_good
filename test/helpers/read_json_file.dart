
import 'dart:io';

Future<String> readFile(String fileName) async {
  return File(fileName).readAsString();
}