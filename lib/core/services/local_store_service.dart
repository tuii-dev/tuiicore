import 'package:tuiicore/core/models/login_impersonation_directive_model.dart';

abstract class LocalStoreService {
  Future<LoginImpersonationDirective?> getLoginImpersonationDirective({
    required String targetUserId,
  });

  Future<dynamic> saveLoginImpersonationDirective({
    required LoginImpersonationDirective directive,
  });

  Future<void> deleteLoginImpersonationDirective({
    required String targetUserId,
  });
}