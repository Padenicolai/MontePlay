import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_group_component_widget.dart' show CreateGroupComponentWidget;
import 'package:flutter/material.dart';

class CreateGroupComponentModel
    extends FlutterFlowModel<CreateGroupComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  List<String> listafcmToken = [];
  void addToListafcmToken(String item) => listafcmToken.add(item);
  void removeFromListafcmToken(String item) => listafcmToken.remove(item);
  void removeAtIndexFromListafcmToken(int index) =>
      listafcmToken.removeAt(index);
  void insertAtIndexInListafcmToken(int index, String item) =>
      listafcmToken.insert(index, item);
  void updateListafcmTokenAtIndex(int index, Function(String) updateFn) =>
      listafcmToken[index] = updateFn(listafcmToken[index]);

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (getUsuariosFiltro)] action in TextField widget.
  ApiCallResponse? outMembersChat;
  // Stores action output result for [Backend Call - API (getUsuariosFiltro)] action in TextField widget.
  ApiCallResponse? outMembersChatCopy;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
