import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:tuiicore/config.dart';
import 'package:localstore/localstore.dart';
import 'package:tuiiweb/core/config/paths.dart';
import 'package:tuiiweb/core/models/login_impersonation_directive_model.dart';
import 'package:tuiiweb/core/services/local_store_service.dart';

class LocalStoreServiceImpl extends LocalStoreService {
  LocalStoreServiceImpl({required this.db});

  final Localstore db;

  @override
  Future<LoginImpersonationDirective?> getLoginImpersonationDirective({
    required String targetUserId,
  }) async {
    final doc = await db
        .collection(Paths.impersonationDirectives)
        .doc(targetUserId)
        .get();
    return (doc != null) ? LoginImpersonationDirective.fromMap(doc) : null;
  }

  @override
  Future<dynamic> saveLoginImpersonationDirective({
    required LoginImpersonationDirective directive,
  }) {
    return db
        .collection(Paths.impersonationDirectives)
        .doc(directive.targetUserId)
        .set(directive.toMap(), SetOptions(merge: true));
  }

  @override
  Future<void> deleteLoginImpersonationDirective({
    required String targetUserId,
  }) {
    return db
        .collection(Paths.impersonationDirectives)
        .doc(targetUserId)
        .delete();
  }
}