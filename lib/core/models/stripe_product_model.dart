import 'dart:convert';

import 'package:equatable/equatable.dart';

class StripeProduct extends Equatable {
  final String? id;
  final String? object;
  final bool? active;
  final DateTime? created;
  final String? defaultPrice;
  final String? description;
  final List<String>? images;
  final bool? livemode;
  final Map<String, dynamic>? metadata;
  final String? name;
  final Map<String, dynamic>? packageDimensions;
  final bool? shippable;
  final String? statementDescriptor;
  final String? taxCode;
  final String? unitLabel;
  final DateTime? updated;
  final String? url;

  const StripeProduct({
    this.id,
    this.object,
    this.active,
    this.created,
    this.defaultPrice,
    this.description,
    this.images,
    this.livemode,
    this.metadata,
    this.name,
    this.packageDimensions,
    this.shippable,
    this.statementDescriptor,
    this.taxCode,
    this.unitLabel,
    this.updated,
    this.url,
  });

  StripeProduct copyWith({
    String? id,
    String? object,
    bool? active,
    DateTime? created,
    String? defaultPrice,
    String? description,
    List<String>? images,
    bool? livemode,
    Map<String, dynamic>? metadata,
    String? name,
    Map<String, dynamic>? packageDimensions,
    bool? shippable,
    String? statementDescriptor,
    String? taxCode,
    String? unitLabel,
    DateTime? updated,
    String? url,
  }) {
    return StripeProduct(
      id: id ?? this.id,
      object: object ?? this.object,
      active: active ?? this.active,
      created: created ?? this.created,
      defaultPrice: defaultPrice ?? this.defaultPrice,
      description: description ?? this.description,
      images: images ?? this.images,
      livemode: livemode ?? this.livemode,
      metadata: metadata ?? this.metadata,
      name: name ?? this.name,
      packageDimensions: packageDimensions ?? this.packageDimensions,
      shippable: shippable ?? this.shippable,
      statementDescriptor: statementDescriptor ?? this.statementDescriptor,
      taxCode: taxCode ?? this.taxCode,
      unitLabel: unitLabel ?? this.unitLabel,
      updated: updated ?? this.updated,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'object': object,
      'active': active,
      'created': created?.toUtc().millisecondsSinceEpoch,
      'default_price': defaultPrice,
      'description': description,
      'images': images,
      'livemode': livemode,
      'metadata': metadata,
      'name': name,
      'package_dimensions': packageDimensions,
      'shippable': shippable,
      'statement_descriptor': statementDescriptor,
      'tax_code': taxCode,
      'unit_label': unitLabel,
      'updated': updated?.toUtc().millisecondsSinceEpoch,
      'url': url,
    };
  }

  factory StripeProduct.fromMap(Map<String, dynamic> map) {
    return StripeProduct(
      id: map['id'],
      object: map['object'],
      active: map['active'],
      created: map['created'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['created']).toLocal()
          : null,
      defaultPrice: map['default_price'],
      description: map['description'],
      images: map['images'] != null ? List<String>.from(map['images']) : [],
      livemode: map['livemode'],
      metadata: map['metadata'] != null
          ? Map<String, dynamic>.from(map['metadata'])
          : {},
      name: map['name'],
      packageDimensions: map['package_dimensions'] != null
          ? Map<String, dynamic>.from(map['package_dimensions'])
          : {},
      shippable: map['shippable'],
      statementDescriptor: map['statement_descriptor'],
      taxCode: map['tax_code'],
      unitLabel: map['unit_label'],
      updated: map['updated'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updated']).toLocal()
          : null,
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StripeProduct.fromJson(String source) =>
      StripeProduct.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StripeProduct(id: $id, object: $object, active: $active, created: $created, defaultPrice: $defaultPrice, description: $description, images: $images, livemode: $livemode, metadata: $metadata, name: $name, packageDimensions: $packageDimensions, shippable: $shippable, statementDescriptor: $statementDescriptor, taxCode: $taxCode, unitLabel: $unitLabel, updated: $updated, url: $url)';
  }

  @override
  List<Object?> get props {
    return [
      id,
      object,
      active,
      created,
      defaultPrice,
      description,
      images,
      livemode,
      metadata,
      name,
      packageDimensions,
      shippable,
      statementDescriptor,
      taxCode,
      unitLabel,
      updated,
      url,
    ];
  }
}