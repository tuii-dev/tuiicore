import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/blockchain_action_type.dart';
import 'package:tuiicore/core/enums/blockchain_entity_type.dart';

class BlockChainJobModel extends Equatable {
  final BlockChainEntityType entityType;
  final BlockChainActionType actionType;
  final Map<String, dynamic> payload;

  const BlockChainJobModel({
    required this.entityType,
    required this.actionType,
    required this.payload,
  });

  BlockChainJobModel copyWith({
    BlockChainEntityType? entityType,
    BlockChainActionType? actionType,
    dynamic payload,
  }) {
    return BlockChainJobModel(
      entityType: entityType ?? this.entityType,
      actionType: actionType ?? this.actionType,
      payload: payload ?? this.payload,
    );
  }

  @override
  List<Object> get props => [entityType, actionType, payload];

  Map<String, dynamic> toMap() {
    return {
      'entityType': entityType.toMap(),
      'actionType': actionType.toMap(),
      'payload': payload,
    };
  }

  factory BlockChainJobModel.fromMap(Map<String, dynamic> map) {
    const staticEntityType = BlockChainEntityType.bookings;
    const staticActionType = BlockChainActionType.create;
    return BlockChainJobModel(
      entityType: staticEntityType.fromMap(map['entityType']),
      actionType: staticActionType.fromMap(map['actionType']),
      payload: Map<String, dynamic>.from(map['payload']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BlockChainJobModel.fromJson(String source) =>
      BlockChainJobModel.fromMap(json.decode(source));
}