import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/beacon_command_type.dart';

class BeaconCommand extends Equatable {
  final BeaconCommandType? type;
  final Map<String, dynamic>? payload;

  const BeaconCommand({
    this.type,
    this.payload,
  });

  BeaconCommand copyWith({
    BeaconCommandType? type,
    Map<String, dynamic>? payload,
  }) {
    return BeaconCommand(
      type: type ?? this.type,
      payload: payload ?? this.payload,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type?.toMap(),
      'payload': payload,
    };
  }

  factory BeaconCommand.fromMap(Map<String, dynamic> map) {
    const staticType = BeaconCommandType.unknown;
    return BeaconCommand(
      type: map['type'] != null
          ? staticType.fromMap(map['type'])
          : BeaconCommandType.unknown,
      payload: Map<String, dynamic>.from(map['payload']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BeaconCommand.fromJson(String source) =>
      BeaconCommand.fromMap(json.decode(source));

  @override
  String toString() => 'BeaconCommand(type: $type, payload: $payload)';

  @override
  List<Object?> get props => [type, payload];
}