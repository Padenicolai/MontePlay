import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ministracoes_widget.dart' show MinistracoesWidget;
import 'package:flutter/material.dart';

class MinistracoesModel extends FlutterFlowModel<MinistracoesWidget> {
  ///  Local state fields for this page.

  String page = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for listVideos widget.
  ScrollController? listVideos;
  // Stores action output result for [Backend Call - API (search)] action in Button widget.
  ApiCallResponse? apiResultprev;
  // Stores action output result for [Backend Call - API (search)] action in Button widget.
  ApiCallResponse? apiResulto2k;

  @override
  void initState(BuildContext context) {
    listVideos = ScrollController();
  }

  @override
  void dispose() {
    listVideos?.dispose();
  }
}
