import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yourCel widget.
  FocusNode? yourCelFocusNode;
  TextEditingController? yourCelTextController;
  final yourCelMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? yourCelTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? imagem;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? nome;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? aniversario;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? telefone;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourCelFocusNode?.dispose();
    yourCelTextController?.dispose();
  }
}
