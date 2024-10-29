import '/backend/api_requests/api_calls.dart';
import '/compents/perfil/perfil_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_ministerios_widget.dart' show HomeMinisteriosWidget;
import 'package:flutter/material.dart';

class HomeMinisteriosModel extends FlutterFlowModel<HomeMinisteriosWidget> {
  ///  Local state fields for this page.

  String? userLogger;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getUsuarios)] action in homeMinisterios widget.
  ApiCallResponse? outUser;
  // Model for perfil component.
  late PerfilModel perfilModel;

  @override
  void initState(BuildContext context) {
    perfilModel = createModel(context, () => PerfilModel());
  }

  @override
  void dispose() {
    perfilModel.dispose();
  }
}
