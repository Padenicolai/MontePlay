import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cultos_geral_widget.dart' show CultosGeralWidget;
import 'package:flutter/material.dart';

class CultosGeralModel extends FlutterFlowModel<CultosGeralWidget> {
  ///  Local state fields for this page.

  String funcaoescolhida = ' ';

  String? status;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (buscarUser)] action in cultosGeral widget.
  ApiCallResponse? outUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
