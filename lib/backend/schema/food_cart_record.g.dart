// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoodCartRecord> _$foodCartRecordSerializer =
    new _$FoodCartRecordSerializer();

class _$FoodCartRecordSerializer
    implements StructuredSerializer<FoodCartRecord> {
  @override
  final Iterable<Type> types = const [FoodCartRecord, _$FoodCartRecord];
  @override
  final String wireName = 'FoodCartRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FoodCartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FoodCartRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoodCartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodCartRecord extends FoodCartRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final DateTime? createdAt;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FoodCartRecord([void Function(FoodCartRecordBuilder)? updates]) =>
      (new FoodCartRecordBuilder()..update(updates))._build();

  _$FoodCartRecord._(
      {this.name,
      this.description,
      this.price,
      this.createdAt,
      this.quantity,
      this.userRef,
      this.ffRef})
      : super._();

  @override
  FoodCartRecord rebuild(void Function(FoodCartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodCartRecordBuilder toBuilder() =>
      new FoodCartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodCartRecord &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        createdAt == other.createdAt &&
        quantity == other.quantity &&
        userRef == other.userRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, userRef.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodCartRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('createdAt', createdAt)
          ..add('quantity', quantity)
          ..add('userRef', userRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FoodCartRecordBuilder
    implements Builder<FoodCartRecord, FoodCartRecordBuilder> {
  _$FoodCartRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FoodCartRecordBuilder() {
    FoodCartRecord._initializeBuilder(this);
  }

  FoodCartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _createdAt = $v.createdAt;
      _quantity = $v.quantity;
      _userRef = $v.userRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodCartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoodCartRecord;
  }

  @override
  void update(void Function(FoodCartRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodCartRecord build() => _build();

  _$FoodCartRecord _build() {
    final _$result = _$v ??
        new _$FoodCartRecord._(
            name: name,
            description: description,
            price: price,
            createdAt: createdAt,
            quantity: quantity,
            userRef: userRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
