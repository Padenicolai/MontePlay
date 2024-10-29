import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'drdfuncao_widget.dart' show DrdfuncaoWidget;
import 'package:flutter/material.dart';

class DrdfuncaoModel extends FlutterFlowModel<DrdfuncaoWidget> {
  ///  Local state fields for this component.

  List<String> fcmToken = [];
  void addToFcmToken(String item) => fcmToken.add(item);
  void removeFromFcmToken(String item) => fcmToken.remove(item);
  void removeAtIndexFromFcmToken(int index) => fcmToken.removeAt(index);
  void insertAtIndexInFcmToken(int index, String item) =>
      fcmToken.insert(index, item);
  void updateFcmTokenAtIndex(int index, Function(String) updateFn) =>
      fcmToken[index] = updateFn(fcmToken[index]);

  List<String> funcao = [];
  void addToFuncao(String item) => funcao.add(item);
  void removeFromFuncao(String item) => funcao.remove(item);
  void removeAtIndexFromFuncao(int index) => funcao.removeAt(index);
  void insertAtIndexInFuncao(int index, String item) =>
      funcao.insert(index, item);
  void updateFuncaoAtIndex(int index, Function(String) updateFn) =>
      funcao[index] = updateFn(funcao[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getFuncaoGrupo)] action in drdfuncao widget.
  ApiCallResponse? apiResultaj3;
  // State field(s) for dpdfuncao widget.
  int? dpdfuncaoValue;
  FormFieldController<int>? dpdfuncaoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
