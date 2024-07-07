import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as p;

Logger logger(dynamic location) => Logger(
    filter: ProductionFilter(),
    printer: CustomPrinter(location is Type ? location.toString() : location),
    level: Level.trace,
    output: FileOutput());

class CustomPrinter extends LogPrinter {
  final String className;
  CustomPrinter(this.className);
  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter().levelColors?[event.level];
    final emoji = PrettyPrinter().levelEmojis?[event.level];
    final message = stringifyMessage(event.message);
    return [
      color != null
          ? color('$emoji: $className $message')
          : '$emoji: $className $message'
    ];
  }

  // Handles any object that is causing JsonEncoder() problems
  Object toEncodableFallback(dynamic object) {
    return object.toString();
  }

  String stringifyMessage(dynamic message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      var encoder = JsonEncoder.withIndent('  ', toEncodableFallback);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }
}

class FileOutput extends LogOutput {
  FileOutput();

  File? file;

  @override
  Future<void> init() async {
    super.init();
    file = File('${p.dirname(Platform.resolvedExecutable)}${p.separator}log');
    bool exist = await file!.exists();
    if (exist) {
      int length = await file!.length();
      if (length >= 100000000) {
        file?.writeAsString('', mode: FileMode.writeOnly);
      }
    }
  }

  @override
  void output(OutputEvent event) async {
    if (file != null) {
      for (var line in event.lines) {
        await file?.writeAsString("${DateTime.now()} : ${line.toString()}\n",
            mode: FileMode.writeOnlyAppend);
        debugPrint("${DateTime.now()} : ${line.toString()}\n");
      }
    } else {
      for (var line in event.lines) {
        debugPrint(line);
      }
    }
  }
}
