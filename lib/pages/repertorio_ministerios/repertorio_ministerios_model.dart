import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'repertorio_ministerios_widget.dart' show RepertorioMinisteriosWidget;
import 'package:flutter/material.dart';

class RepertorioMinisteriosModel
    extends FlutterFlowModel<RepertorioMinisteriosWidget> {
  ///  Local state fields for this page.

  String idvideo = ' ';

  bool visibilidade = true;

  String? status = '-';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getUsuarios)] action in repertorioMinisterios widget.
  ApiCallResponse? outUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
