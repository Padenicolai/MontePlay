import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_group_member_chat_widget.dart' show AddGroupMemberChatWidget;
import 'package:flutter/material.dart';

class AddGroupMemberChatModel
    extends FlutterFlowModel<AddGroupMemberChatWidget> {
  ///  Local state fields for this component.

  List<String> chatMembersUid = [];
  void addToChatMembersUid(String item) => chatMembersUid.add(item);
  void removeFromChatMembersUid(String item) => chatMembersUid.remove(item);
  void removeAtIndexFromChatMembersUid(int index) =>
      chatMembersUid.removeAt(index);
  void insertAtIndexInChatMembersUid(int index, String item) =>
      chatMembersUid.insert(index, item);
  void updateChatMembersUidAtIndex(int index, Function(String) updateFn) =>
      chatMembersUid[index] = updateFn(chatMembersUid[index]);

  List<dynamic> apiResult = [];
  void addToApiResult(dynamic item) => apiResult.add(item);
  void removeFromApiResult(dynamic item) => apiResult.remove(item);
  void removeAtIndexFromApiResult(int index) => apiResult.removeAt(index);
  void insertAtIndexInApiResult(int index, dynamic item) =>
      apiResult.insert(index, item);
  void updateApiResultAtIndex(int index, Function(dynamic) updateFn) =>
      apiResult[index] = updateFn(apiResult[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getUsuariosAddMember)] action in TextField widget.
  ApiCallResponse? outAddMembers;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
