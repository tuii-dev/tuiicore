import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

// General Failures
class Failure extends Equatable {
  final String? message;
  final String? code;
  final bool supressMessaging;
  final MultiFactorSession? multiFactorSession;
  final PhoneMultiFactorInfo? multiFactorInfo;
  final Future<UserCredential> Function(MultiFactorAssertion)? resolveSignIn;

  const Failure({
    this.message,
    this.code,
    this.supressMessaging = false,
    this.multiFactorSession,
    this.multiFactorInfo,
    this.resolveSignIn,
  });

  factory Failure.empty() {
    return const Failure();
  }

  @override
  List<Object?> get props => [
        message,
        code,
        supressMessaging,
        multiFactorSession,
        multiFactorInfo,
        resolveSignIn
      ];

  Failure copyWith({
    String? message,
    String? code,
    bool? supressMessaging,
    MultiFactorSession? multiFactorSession,
    PhoneMultiFactorInfo? multiFactorInfo,
    Future<UserCredential> Function(MultiFactorAssertion)? resolveSignIn,
  }) {
    return Failure(
      message: message ?? this.message,
      code: code ?? this.code,
      supressMessaging: supressMessaging ?? this.supressMessaging,
      multiFactorSession: multiFactorSession ?? this.multiFactorSession,
      multiFactorInfo: multiFactorInfo ?? this.multiFactorInfo,
      resolveSignIn: resolveSignIn ?? this.resolveSignIn,
    );
  }
}