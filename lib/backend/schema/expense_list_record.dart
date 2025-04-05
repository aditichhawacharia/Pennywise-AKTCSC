import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseListRecord extends FirestoreRecord {
  ExpenseListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "expense" field.
  List<String>? _expense;
  List<String> get expense => _expense ?? const [];
  bool hasExpense() => _expense != null;

  // "expenseUser" field.
  DocumentReference? _expenseUser;
  DocumentReference? get expenseUser => _expenseUser;
  bool hasExpenseUser() => _expenseUser != null;

  // "totalexpense" field.
  double? _totalexpense;
  double get totalexpense => _totalexpense ?? 0.0;
  bool hasTotalexpense() => _totalexpense != null;

  void _initializeFields() {
    _expense = getDataList(snapshotData['expense']);
    _expenseUser = snapshotData['expenseUser'] as DocumentReference?;
    _totalexpense = castToType<double>(snapshotData['totalexpense']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expenseList');

  static Stream<ExpenseListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseListRecord.fromSnapshot(s));

  static Future<ExpenseListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseListRecord.fromSnapshot(s));

  static ExpenseListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpenseListRecordData({
  DocumentReference? expenseUser,
  double? totalexpense,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'expenseUser': expenseUser,
      'totalexpense': totalexpense,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseListRecordDocumentEquality implements Equality<ExpenseListRecord> {
  const ExpenseListRecordDocumentEquality();

  @override
  bool equals(ExpenseListRecord? e1, ExpenseListRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.expense, e2?.expense) &&
        e1?.expenseUser == e2?.expenseUser &&
        e1?.totalexpense == e2?.totalexpense;
  }

  @override
  int hash(ExpenseListRecord? e) =>
      const ListEquality().hash([e?.expense, e?.expenseUser, e?.totalexpense]);

  @override
  bool isValidKey(Object? o) => o is ExpenseListRecord;
}
