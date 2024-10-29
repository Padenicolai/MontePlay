import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cmp_repertorio_widget.dart' show CmpRepertorioWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CmpRepertorioModel extends FlutterFlowModel<CmpRepertorioWidget> {
  ///  Local state fields for this component.

  int? cmppage = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  RepertorioCultoRow? insertMusic;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
