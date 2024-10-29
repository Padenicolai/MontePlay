import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'escala_widget.dart' show EscalaWidget;
import 'package:flutter/material.dart';

class EscalaModel extends FlutterFlowModel<EscalaWidget> {
  ///  Local state fields for this page.

  List<String> escala = [];
  void addToEscala(String item) => escala.add(item);
  void removeFromEscala(String item) => escala.remove(item);
  void removeAtIndexFromEscala(int index) => escala.removeAt(index);
  void insertAtIndexInEscala(int index, String item) =>
      escala.insert(index, item);
  void updateEscalaAtIndex(int index, Function(String) updateFn) =>
      escala[index] = updateFn(escala[index]);

  String? status;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getUsuarios)] action in escala widget.
  ApiCallResponse? outUser;
  // Stores action output result for [Backend Call - API (getAdminTokens)] action in escala widget.
  ApiCallResponse? apiResultAdminToken;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<EscalaRow>? out2;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<EscalaRow>? out1;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<EscalaRow>? out3;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<EscalaRow>? out4;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<RepertorioCultoRow>? out5;
  Completer<List<ViewSetlistRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

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
