import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_expense_widget.dart' show CreateExpenseWidget;
import 'package:flutter/material.dart';

class CreateExpenseModel extends FlutterFlowModel<CreateExpenseWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for expenseAmount widget.
  FocusNode? expenseAmountFocusNode;
  TextEditingController? expenseAmountTextController;
  String? Function(BuildContext, String?)? expenseAmountTextControllerValidator;
  String? _expenseAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8hzaiw1r' /* Please enter an amount */,
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
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;

  @override
  void initState(BuildContext context) {
    expenseAmountTextControllerValidator =
        _expenseAmountTextControllerValidator;
  }

  @override
  void dispose() {
    expenseAmountFocusNode?.dispose();
    expenseAmountTextController?.dispose();

    expenseNameFocusNode?.dispose();
    expenseNameTextController?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();
  }
}
