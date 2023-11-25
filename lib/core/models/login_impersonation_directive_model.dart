import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginImpersonationDirective extends Equatable {
  final String targetUserId;
  final String impersonationId;
  const LoginImpersonationDirective({
    required this.targetUserId,
    required this.impersonationId,
  });

  LoginImpersonationDirective copyWith({
    String? targetUserId,
    String? impersonationId,
  }) {
    return LoginImpersonationDirective(
      targetUserId: targetUserId ?? this.targetUserId,
      impersonationId: impersonationId ?? this.impersonationId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'targetUserId': targetUserId,
      'impersonationId': impersonationId,
    };
  }

  factory LoginImpersonationDirective.fromMap(Map<String, dynamic> map) {
    return LoginImpersonationDirective(
      targetUserId: map['targetUserId'] ?? '',
      impersonationId: map['impersonationId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginImpersonationDirective.fromJson(String source) =>
      LoginImpersonationDirective.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginImpersonationDirective(targetUserId: $targetUserId, impersonationId: $impersonationId)';

  @override
  List<Object> get props => [targetUserId, impersonationId];
}