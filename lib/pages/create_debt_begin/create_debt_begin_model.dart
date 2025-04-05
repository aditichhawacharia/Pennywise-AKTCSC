import '/flutter_flow/flutter_flow_util.dart';
import 'create_debt_begin_widget.dart' show CreateDebtBeginWidget;
import 'package:flutter/material.dart';

class CreateDebtBeginModel extends FlutterFlowModel<CreateDebtBeginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DebtAmt widget.
  FocusNode? debtAmtFocusNode;
  TextEditingController? debtAmtTextController;
  String? Function(BuildContext, String?)? debtAmtTextControllerValidator;
  String? _debtAmtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '12fvucvc' /* Please enter an amount */,
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
    debtAmtTextControllerValidator = _debtAmtTextControllerValidator;
  }

  @override
  void dispose() {
    debtAmtFocusNode?.dispose();
    debtAmtTextController?.dispose();

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
