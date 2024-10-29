import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'bloqueios_widget.dart' show BloqueiosWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class BloqueiosModel extends FlutterFlowModel<BloqueiosWidget> {
  ///  Local state fields for this component.

  List<dynamic> cultos = [];
  void addToCultos(dynamic item) => cultos.add(item);
  void removeFromCultos(dynamic item) => cultos.remove(item);
  void removeAtIndexFromCultos(int index) => cultos.removeAt(index);
  void insertAtIndexInCultos(int index, dynamic item) =>
      cultos.insert(index, item);
  void updateCultosAtIndex(int index, Function(dynamic) updateFn) =>
      cultos[index] = updateFn(cultos[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getCulto)] action in bloqueios widget.
  ApiCallResponse? apiGetCulto;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  Completer<List<VBloqueiosRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
