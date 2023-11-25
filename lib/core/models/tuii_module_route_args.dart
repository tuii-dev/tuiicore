import 'package:equatable/equatable.dart';
import 'package:tuiicore/core/enums/module_type.dart';

class TuiiModuleRouteArgs extends Equatable {
  final ModuleType moduleType;
  final RoutePayloadType payloadType;
  final dynamic payload;

  const TuiiModuleRouteArgs({
    required this.moduleType,
    required this.payloadType,
    required this.payload,
  });

  @override
  List<Object> get props => [moduleType, payloadType, payload];

  TuiiModuleRouteArgs copyWith({
    ModuleType? moduleType,
    RoutePayloadType? payloadType,
    dynamic payload,
  }) {
    return TuiiModuleRouteArgs(
      moduleType: moduleType ?? this.moduleType,
      payloadType: payloadType ?? this.payloadType,
      payload: payload ?? this.payload,
    );
  }
}