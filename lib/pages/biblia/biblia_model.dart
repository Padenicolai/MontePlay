import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'biblia_widget.dart' show BibliaWidget;
import 'package:flutter/material.dart';

class BibliaModel extends FlutterFlowModel<BibliaWidget> {
  ///  Local state fields for this page.

  List<Api2Struct> dtrepertorio = [];
  void addToDtrepertorio(Api2Struct item) => dtrepertorio.add(item);
  void removeFromDtrepertorio(Api2Struct item) => dtrepertorio.remove(item);
  void removeAtIndexFromDtrepertorio(int index) => dtrepertorio.removeAt(index);
  void insertAtIndexInDtrepertorio(int index, Api2Struct item) =>
      dtrepertorio.insert(index, item);
  void updateDtrepertorioAtIndex(int index, Function(Api2Struct) updateFn) =>
      dtrepertorio[index] = updateFn(dtrepertorio[index]);

  List<dynamic> jsonrepertorio = [];
  void addToJsonrepertorio(dynamic item) => jsonrepertorio.add(item);
  void removeFromJsonrepertorio(dynamic item) => jsonrepertorio.remove(item);
  void removeAtIndexFromJsonrepertorio(int index) =>
      jsonrepertorio.removeAt(index);
  void insertAtIndexInJsonrepertorio(int index, dynamic item) =>
      jsonrepertorio.insert(index, item);
  void updateJsonrepertorioAtIndex(int index, Function(dynamic) updateFn) =>
      jsonrepertorio[index] = updateFn(jsonrepertorio[index]);

  int? offset = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
