import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cultos_widget.dart' show CultosWidget;
import 'package:flutter/material.dart';

class CultosModel extends FlutterFlowModel<CultosWidget> {
  ///  Local state fields for this page.

  String funcaoescolhida = ' ';

  String? status;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (buscarUser)] action in cultos widget.
  ApiCallResponse? outUser;
  // Stores action output result for [Backend Call - API (getBloqueios)] action in SlidableActionWidget widget.
  ApiCallResponse? apiResult08a;
  // Stores action output result for [Backend Call - Delete Row(s)] action in SlidableActionWidget widget.
  List<CultoRow>? outDel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
