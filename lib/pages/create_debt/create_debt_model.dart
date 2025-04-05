import '/flutter_flow/flutter_flow_util.dart';
import 'create_debt_widget.dart' show CreateDebtWidget;
import 'package:flutter/material.dart';

class CreateDebtModel extends FlutterFlowModel<CreateDebtWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for debtAmount widget.
  FocusNode? debtAmountFocusNode;
  TextEditingController? debtAmountTextController;
  String? Function(BuildContext, String?)? debtAmountTextControllerValidator;
  String? _debtAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'x483yf6p' /* Please enter an amount */,
      );
    }

    return null;
  }

  // State field(s) for debtName widget.
  FocusNode? debtNameFocusNode;
  TextEditingController? debtNameTextController;
  String? Function(BuildContext, String?)? debtNameTextControllerValidator;
  // State field(s) for debtAPR widget.
  FocusNode? debtAPRFocusNode;
  TextEditingController? debtAPRTextController;
  String? Function(BuildContext, String?)? debtAPRTextControllerValidator;
  // State field(s) for debtMinPayment widget.
  FocusNode? debtMinPaymentFocusNode;
  TextEditingController? debtMinPaymentTextController;
  String? Function(BuildContext, String?)?
      debtMinPaymentTextControllerValidator;
  // State field(s) for debtDesc widget.
  FocusNode? debtDescFocusNode;
  TextEditingController? debtDescTextController;
  String? Function(BuildContext, String?)? debtDescTextControllerValidator;

  @override
  void initState(BuildContext context) {
    debtAmountTextControllerValidator = _debtAmountTextControllerValidator;
  }

  @override
  void dispose() {
    debtAmountFocusNode?.dispose();
    debtAmountTextController?.dispose();

    debtNameFocusNode?.dispose();
    debtNameTextController?.dispose();

    debtAPRFocusNode?.dispose();
    debtAPRTextController?.dispose();

    debtMinPaymentFocusNode?.dispose();
    debtMinPaymentTextController?.dispose();

    debtDescFocusNode?.dispose();
    debtDescTextController?.dispose();
  }
}
