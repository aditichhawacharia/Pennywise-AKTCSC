import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DebtListRecord extends FirestoreRecord {
  DebtListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "debt" field.
  List<String>? _debt;
  List<String> get debt => _debt ?? const [];
  bool hasDebt() => _debt != null;

  // "debtUser" field.
  DocumentReference? _debtUser;
  DocumentReference? get debtUser => _debtUser;
  bool hasDebtUser() => _debtUser != null;

  // "overallMinPay" field.
  double? _overallMinPay;
  double get overallMinPay => _overallMinPay ?? 0.0;
  bool hasOverallMinPay() => _overallMinPay != null;

  // "overallPayment" field.
  double? _overallPayment;
  double get overallPayment => _overallPayment ?? 0.0;
  bool hasOverallPayment() => _overallPayment != null;

  // "highestAPR" field.
  double? _highestAPR;
  double get highestAPR => _highestAPR ?? 0.0;
  bool hasHighestAPR() => _highestAPR != null;

  void _initializeFields() {
    _debt = getDataList(snapshotData['debt']);
    _debtUser = snapshotData['debtUser'] as DocumentReference?;
    _overallMinPay = castToType<double>(snapshotData['overallMinPay']);
    _overallPayment = castToType<double>(snapshotData['overallPayment']);
    _highestAPR = castToType<double>(snapshotData['highestAPR']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('debtList');

  static Stream<DebtListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DebtListRecord.fromSnapshot(s));

  static Future<DebtListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DebtListRecord.fromSnapshot(s));

  static DebtListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DebtListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DebtListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DebtListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DebtListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DebtListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDebtListRecordData({
  DocumentReference? debtUser,
  double? overallMinPay,
  double? overallPayment,
  double? highestAPR,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'debtUser': debtUser,
      'overallMinPay': overallMinPay,
      'overallPayment': overallPayment,
      'highestAPR': highestAPR,
    }.withoutNulls,
  );

  return firestoreData;
}

class DebtListRecordDocumentEquality implements Equality<DebtListRecord> {
  const DebtListRecordDocumentEquality();

  @override
  bool equals(DebtListRecord? e1, DebtListRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.debt, e2?.debt) &&
        e1?.debtUser == e2?.debtUser &&
        e1?.overallMinPay == e2?.overallMinPay &&
        e1?.overallPayment == e2?.overallPayment &&
        e1?.highestAPR == e2?.highestAPR;
  }

  @override
  int hash(DebtListRecord? e) => const ListEquality().hash([
        e?.debt,
        e?.debtUser,
        e?.overallMinPay,
        e?.overallPayment,
        e?.highestAPR
      ]);

  @override
  bool isValidKey(Object? o) => o is DebtListRecord;
}
