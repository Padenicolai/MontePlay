import '/components/login_novo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this component.

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
}
