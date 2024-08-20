import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpensesRecord extends FirestoreRecord {
  ExpensesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "expenseDescription" field.
  String? _expenseDescription;
  String get expenseDescription => _expenseDescription ?? '';
  bool hasExpenseDescription() => _expenseDescription != null;

  // "userExpenses" field.
  DocumentReference? _userExpenses;
  DocumentReference? get userExpenses => _userExpenses;
  bool hasUserExpenses() => _userExpenses != null;

  // "expenseDate" field.
  DateTime? _expenseDate;
  DateTime? get expenseDate => _expenseDate;
  bool hasExpenseDate() => _expenseDate != null;

  // "expenseAmount" field.
  String? _expenseAmount;
  String get expenseAmount => _expenseAmount ?? '';
  bool hasExpenseAmount() => _expenseAmount != null;

  // "expenseAmountNumber" field.
  double? _expenseAmountNumber;
  double get expenseAmountNumber => _expenseAmountNumber ?? 0.0;
  bool hasExpenseAmountNumber() => _expenseAmountNumber != null;

  // "expenseType" field.
  String? _expenseType;
  String get expenseType => _expenseType ?? '';
  bool hasExpenseType() => _expenseType != null;

  // "expenseName" field.
  String? _expenseName;
  String get expenseName => _expenseName ?? '';
  bool hasExpenseName() => _expenseName != null;

  void _initializeFields() {
    _expenseDescription = snapshotData['expenseDescription'] as String?;
    _userExpenses = snapshotData['userExpenses'] as DocumentReference?;
    _expenseDate = snapshotData['expenseDate'] as DateTime?;
    _expenseAmount = snapshotData['expenseAmount'] as String?;
    _expenseAmountNumber =
        castToType<double>(snapshotData['expenseAmountNumber']);
    _expenseType = snapshotData['expenseType'] as String?;
    _expenseName = snapshotData['expenseName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expenses');

  static Stream<ExpensesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpensesRecord.fromSnapshot(s));

  static Future<ExpensesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpensesRecord.fromSnapshot(s));

  static ExpensesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpensesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpensesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpensesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpensesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpensesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpensesRecordData({
  String? expenseDescription,
  DocumentReference? userExpenses,
  DateTime? expenseDate,
  String? expenseAmount,
  double? expenseAmountNumber,
  String? expenseType,
  String? expenseName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'expenseDescription': expenseDescription,
      'userExpenses': userExpenses,
      'expenseDate': expenseDate,
      'expenseAmount': expenseAmount,
      'expenseAmountNumber': expenseAmountNumber,
      'expenseType': expenseType,
      'expenseName': expenseName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpensesRecordDocumentEquality implements Equality<ExpensesRecord> {
  const ExpensesRecordDocumentEquality();

  @override
  bool equals(ExpensesRecord? e1, ExpensesRecord? e2) {
    return e1?.expenseDescription == e2?.expenseDescription &&
        e1?.userExpenses == e2?.userExpenses &&
        e1?.expenseDate == e2?.expenseDate &&
        e1?.expenseAmount == e2?.expenseAmount &&
        e1?.expenseAmountNumber == e2?.expenseAmountNumber &&
        e1?.expenseType == e2?.expenseType &&
        e1?.expenseName == e2?.expenseName;
  }

  @override
  int hash(ExpensesRecord? e) => const ListEquality().hash([
        e?.expenseDescription,
        e?.userExpenses,
        e?.expenseDate,
        e?.expenseAmount,
        e?.expenseAmountNumber,
        e?.expenseType,
        e?.expenseName
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpensesRecord;
}
