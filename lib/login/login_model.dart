import '/components/login_novo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

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
