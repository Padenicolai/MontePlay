import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'push_all_widget.dart' show PushAllWidget;
import 'package:flutter/material.dart';

class PushAllModel extends FlutterFlowModel<PushAllWidget> {
  ///  Local state fields for this component.

  List<String> tokens = [];
  void addToTokens(String item) => tokens.add(item);
  void removeFromTokens(String item) => tokens.remove(item);
  void removeAtIndexFromTokens(int index) => tokens.removeAt(index);
  void insertAtIndexInTokens(int index, String item) =>
      tokens.insert(index, item);
  void updateTokensAtIndex(int index, Function(String) updateFn) =>
      tokens[index] = updateFn(tokens[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getAdminTokens)] action in pushAll widget.
  ApiCallResponse? apiResult0ex;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for shortBio widget.
  FocusNode? shortBioFocusNode;
  TextEditingController? shortBioTextController;
  String? Function(BuildContext, String?)? shortBioTextControllerValidator;
  // Stores action output result for [Backend Call - API (pushAll)] action in Button widget.
  ApiCallResponse? apiResult9jl;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NotEscalaRow? apiAdmins;
  // Stores action output result for [Backend Call - API (pushAll)] action in Button widget.
  ApiCallResponse? apiResultCulto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    shortBioFocusNode?.dispose();
    shortBioTextController?.dispose();
  }
}
