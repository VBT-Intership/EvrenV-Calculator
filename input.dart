import 'dart:io';
import 'dart:convert';

import 'ui.dart';

class Input {
  static int readCharacter({String inputMessage}) {
    if (inputMessage != null) {
      UI.inputMessage(message: inputMessage);
    } else {
      UI.inputMessage();
    }

    return int.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')));
  }
}
