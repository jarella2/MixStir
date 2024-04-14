import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MarketsRecord extends FirestoreRecord {
  MarketsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "latlong" field.
  LatLng? _latlong;
  LatLng? get latlong => _latlong;
  bool hasLatlong() => _latlong != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _latlong = snapshotData['latlong'] as LatLng?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('markets');

  static Stream<MarketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MarketsRecord.fromSnapshot(s));

  static Future<MarketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MarketsRecord.fromSnapshot(s));

  static MarketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MarketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MarketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MarketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MarketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MarketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMarketsRecordData({
  String? name,
  LatLng? latlong,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'latlong': latlong,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class MarketsRecordDocumentEquality implements Equality<MarketsRecord> {
  const MarketsRecordDocumentEquality();

  @override
  bool equals(MarketsRecord? e1, MarketsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.latlong == e2?.latlong &&
        e1?.type == e2?.type;
  }

  @override
  int hash(MarketsRecord? e) =>
      const ListEquality().hash([e?.name, e?.latlong, e?.type]);

  @override
  bool isValidKey(Object? o) => o is MarketsRecord;
}
