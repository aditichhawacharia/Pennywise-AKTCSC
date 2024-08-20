import '/flutter_flow/flutter_flow_util.dart';
import 'update_debt_widget.dart' show UpdateDebtWidget;
import 'package:flutter/material.dart';

class UpdateDebtModel extends FlutterFlowModel<UpdateDebtWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for debtRepay widget.
  FocusNode? debtRepayFocusNode;
  TextEditingController? debtRepayTextController;
  String? Function(BuildContext, String?)? debtRepayTextControllerValidator;
  String? _debtRepayTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '86x2u64w' /* Please enter an amount */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    debtRepayTextControllerValidator = _debtRepayTextControllerValidator;
  }

  @override
  void dispose() {
    debtRepayFocusNode?.dispose();
    debtRepayTextController?.dispose();
  }
}
