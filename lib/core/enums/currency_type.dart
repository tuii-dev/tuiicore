import 'package:flutter/foundation.dart';

enum CurrencyType { aud }

extension CurrencyTypeExtension on CurrencyType {
  String get name {
    return describeEnum(this);
  }
}