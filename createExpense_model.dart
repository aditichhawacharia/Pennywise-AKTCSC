import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'create_expense_begin_widget.dart' show CreateExpenseBeginWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateExpenseBeginModel
    extends FlutterFlowModel<CreateExpenseBeginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ExpenseAmt widget.
  FocusNode? expenseAmtFocusNode;
  TextEditingController? expenseAmtTextController;
  String? Function(BuildContext, String?)? expenseAmtTextControllerValidator;
  String? _expenseAmtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '79au6dyg' /* Please enter an amount */,
      );
    }

    return null;
  }

  // State field(s) for expenseName widget.
  FocusNode? expenseNameFocusNode;
  TextEditingController? expenseNameTextController;
  String? Function(BuildContext, String?)? expenseNameTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for expenseDesc widget.
  FocusNode? expenseDescFocusNode;
  TextEditingController? expenseDescTextController;
  String? Function(BuildContext, String?)? expenseDescTextControllerValidator;

  @override
  void initState(BuildContext context) {
    expenseAmtTextControllerValidator = _expenseAmtTextControllerValidator;
  }

  @override
  void dispose() {
    expenseAmtFocusNode?.dispose();
    expenseAmtTextController?.dispose();

    expenseNameFocusNode?.dispose();
    expenseNameTextController?.dispose();

    expenseDescFocusNode?.dispose();
    expenseDescTextController?.dispose();
  }
}
