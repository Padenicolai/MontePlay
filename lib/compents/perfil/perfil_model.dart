import '/backend/supabase/supabase.dart';
import '/components/login_novo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this component.

  Completer<List<UsuariosRow>>? requestCompleter;
  // Model for loginNovo component.
  late LoginNovoModel loginNovoModel;

  @override
  void initState(BuildContext context) {
    loginNovoModel = createModel(context, () => LoginNovoModel());
  }

  @override
  void dispose() {
    loginNovoModel.dispose();
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
