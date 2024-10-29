import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_contact_component_widget.dart' show CreateContactComponentWidget;
import 'package:flutter/material.dart';

class CreateContactComponentModel
    extends FlutterFlowModel<CreateContactComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  String? selectedUid;

  dynamic selectedUserData;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getUsuariosFiltro)] action in TextField widget.
  ApiCallResponse? outMembersChat;
  // Stores action output result for [Backend Call - API (getUsuariosFiltro)] action in TextField widget.
  ApiCallResponse? outMembersChatCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
