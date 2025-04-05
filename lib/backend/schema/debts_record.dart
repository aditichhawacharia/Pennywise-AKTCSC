import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DebtsRecord extends FirestoreRecord {
  DebtsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "debtName" field.
  String? _debtName;
  String get debtName => _debtName ?? '';
  bool hasDebtName() => _debtName != null;

  // "debtAPR" field.
  double? _debtAPR;
  double get debtAPR => _debtAPR ?? 0.0;
  bool hasDebtAPR() => _debtAPR != null;

  // "MinPay" field.
  double? _minPay;
  double get minPay => _minPay ?? 0.0;
  bool hasMinPay() => _minPay != null;

  // "userDebts" field.
  DocumentReference? _userDebts;
  DocumentReference? get userDebts => _userDebts;
  bool hasUserDebts() => _userDebts != null;

  // "debtAmt" field.
  String? _debtAmt;
  String get debtAmt => _debtAmt ?? '';
  bool hasDebtAmt() => _debtAmt != null;

  // "debtAmtNum" field.
  double? _debtAmtNum;
  double get debtAmtNum => _debtAmtNum ?? 0.0;
  bool hasDebtAmtNum() => _debtAmtNum != null;

  // "debtAmtPaid" field.
  String? _debtAmtPaid;
  String get debtAmtPaid => _debtAmtPaid ?? '';
  bool hasDebtAmtPaid() => _debtAmtPaid != null;

  // "debtAmtPaidNum" field.
  double? _debtAmtPaidNum;
  double get debtAmtPaidNum => _debtAmtPaidNum ?? 0.0;
  bool hasDebtAmtPaidNum() => _debtAmtPaidNum != null;

  void _initializeFields() {
    _debtName = snapshotData['debtName'] as String?;
    _debtAPR = castToType<double>(snapshotData['debtAPR']);
    _minPay = castToType<double>(snapshotData['MinPay']);
    _userDebts = snapshotData['userDebts'] as DocumentReference?;
    _debtAmt = snapshotData['debtAmt'] as String?;
    _debtAmtNum = castToType<double>(snapshotData['debtAmtNum']);
    _debtAmtPaid = snapshotData['debtAmtPaid'] as String?;
    _debtAmtPaidNum = castToType<double>(snapshotData['debtAmtPaidNum']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('debts');

  static Stream<DebtsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DebtsRecord.fromSnapshot(s));

  static Future<DebtsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DebtsRecord.fromSnapshot(s));

  static DebtsRecord fromSnapshot(DocumentSnapshot snapshot) => DebtsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DebtsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DebtsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DebtsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DebtsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDebtsRecordData({
  String? debtName,
  double? debtAPR,
  double? minPay,
  DocumentReference? userDebts,
  String? debtAmt,
  double? debtAmtNum,
  String? debtAmtPaid,
  double? debtAmtPaidNum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'debtName': debtName,
      'debtAPR': debtAPR,
      'MinPay': minPay,
      'userDebts': userDebts,
      'debtAmt': debtAmt,
      'debtAmtNum': debtAmtNum,
      'debtAmtPaid': debtAmtPaid,
      'debtAmtPaidNum': debtAmtPaidNum,
    }.withoutNulls,
  );

  return firestoreData;
}

class DebtsRecordDocumentEquality implements Equality<DebtsRecord> {
  const DebtsRecordDocumentEquality();

  @override
  bool equals(DebtsRecord? e1, DebtsRecord? e2) {
    return e1?.debtName == e2?.debtName &&
        e1?.debtAPR == e2?.debtAPR &&
        e1?.minPay == e2?.minPay &&
        e1?.userDebts == e2?.userDebts &&
        e1?.debtAmt == e2?.debtAmt &&
        e1?.debtAmtNum == e2?.debtAmtNum &&
        e1?.debtAmtPaid == e2?.debtAmtPaid &&
        e1?.debtAmtPaidNum == e2?.debtAmtPaidNum;
  }

  @override
  int hash(DebtsRecord? e) => const ListEquality().hash([
        e?.debtName,
        e?.debtAPR,
        e?.minPay,
        e?.userDebts,
        e?.debtAmt,
        e?.debtAmtNum,
        e?.debtAmtPaid,
        e?.debtAmtPaidNum
      ]);

  @override
  bool isValidKey(Object? o) => o is DebtsRecord;
}
