import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'food_list_record.g.dart';

abstract class FoodListRecord
    implements Built<FoodListRecord, FoodListRecordBuilder> {
  static Serializer<FoodListRecord> get serializer =>
      _$foodListRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FoodListRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodList');

  static Stream<FoodListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FoodListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FoodListRecord._();
  factory FoodListRecord([void Function(FoodListRecordBuilder) updates]) =
      _$FoodListRecord;

  static FoodListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFoodListRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    FoodListRecord.serializer,
    FoodListRecord(
      (f) => f
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..createdAt = createdAt
        ..image = image,
    ),
  );

  return firestoreData;
}
