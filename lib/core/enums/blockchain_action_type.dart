import 'package:flutter/foundation.dart';

enum BlockChainActionType {
  create,
  update,
  delete,
}

extension BlockChainActionTypeExtension on BlockChainActionType {
  String get name {
    return describeEnum(this);
  }

  String toMap() {
    switch (this) {
      case BlockChainActionType.create:
        return 'create';
      case BlockChainActionType.update:
        return 'update';
      default:
        return 'delete';
    }
  }

  BlockChainActionType fromMap(String? type) {
    switch (type) {
      case 'create':
        return BlockChainActionType.create;
      case 'update':
        return BlockChainActionType.update;
      default:
        return BlockChainActionType.delete;
    }
  }
}