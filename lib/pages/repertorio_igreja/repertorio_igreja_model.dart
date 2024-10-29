import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'repertorio_igreja_widget.dart' show RepertorioIgrejaWidget;
import 'package:flutter/material.dart';

class RepertorioIgrejaModel extends FlutterFlowModel<RepertorioIgrejaWidget> {
  ///  Local state fields for this page.

  String idvideo = ' ';

  bool visibilidade = true;

  String? status = '-';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getUsuarios)] action in repertorioIgreja widget.
  ApiCallResponse? outUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
