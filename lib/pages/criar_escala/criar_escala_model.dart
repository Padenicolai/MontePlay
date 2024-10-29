import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_escala_widget.dart' show CriarEscalaWidget;
import 'package:flutter/material.dart';

class CriarEscalaModel extends FlutterFlowModel<CriarEscalaWidget> {
  ///  Local state fields for this page.

  String funcaoescolhida = ' ';

  int? bloqueios;

  DateTime? dataBloqueio;

  dynamic bloqueio;

  List<String> fcmToken = [];
  void addToFcmToken(String item) => fcmToken.add(item);
  void removeFromFcmToken(String item) => fcmToken.remove(item);
  void removeAtIndexFromFcmToken(int index) => fcmToken.removeAt(index);
  void insertAtIndexInFcmToken(int index, String item) =>
      fcmToken.insert(index, item);
  void updateFcmTokenAtIndex(int index, Function(String) updateFn) =>
      fcmToken[index] = updateFn(fcmToken[index]);

  String? fcmTokenunico;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getBloqueios)] action in criarEscala widget.
  ApiCallResponse? apiResult08a;
  // Stores action output result for [Backend Call - API (getRepertorio)] action in criarEscala widget.
  ApiCallResponse? apiResult12c;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<EscalaRow>? outDel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Checkbox widget.
  Map<VEscalagrupoRow, bool> checkboxValueMap1 = {};
  List<VEscalagrupoRow> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  EscalaRow? idcultolouvor;
  // State field(s) for Checkbox widget.
  Map<VEscalagrupoRow, bool> checkboxValueMap2 = {};
  List<VEscalagrupoRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  EscalaRow? idcultodanca;
  // State field(s) for Checkbox widget.
  Map<VEscalagrupoRow, bool> checkboxValueMap3 = {};
  List<VEscalagrupoRow> get checkboxCheckedItems3 => checkboxValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  EscalaRow? idcultomidia;
  // State field(s) for Checkbox widget.
  Map<VEscalagrupoRow, bool> checkboxValueMap4 = {};
  List<VEscalagrupoRow> get checkboxCheckedItems4 => checkboxValueMap4.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Backend Call - Insert Row] action in Checkbox widget.
  EscalaRow? idcultoinfantil;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Checkbox widget.
  List<EscalaRow>? idcultoinfantilCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
