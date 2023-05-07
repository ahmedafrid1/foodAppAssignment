import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_cart_record.g.dart';

abstract class FoodCartRecord
    implements Built<FoodCartRecord, FoodCartRecordBuilder> {
  static Serializer<FoodCartRecord> get serializer =>
      _$foodCartRecordSerializer;

  String? get name;

  String? get description;

  double? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  int? get quantity;

  DocumentReference? get userRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FoodCartRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..price = 0.0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodCart');

  static Stream<FoodCartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FoodCartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FoodCartRecord._();
  factory FoodCartRecord([void Function(FoodCartRecordBuilder) updates]) =
      _$FoodCartRecord;

  static FoodCartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFoodCartRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  int? quantity,
  DocumentReference? userRef,
}) {
  final firestoreData = serializers.toFirestore(
    FoodCartRecord.serializer,
    FoodCartRecord(
      (f) => f
        ..name = name
        ..description = description
        ..price = price
        ..createdAt = createdAt
        ..quantity = quantity
        ..userRef = userRef,
    ),
  );

  return firestoreData;
}
