import 'package:flutter/material.dart';

class Helpers {
  static findById(list, String id) {
    // debugPrint(list.toString());

    var __findById = (obj) => obj.id == id;
    var result = list.where(__findById);

    // debugPrint(result.length.toString() + " / " + result.first.id );

    return result.length > 0 ? result.first : null;
  }
}
