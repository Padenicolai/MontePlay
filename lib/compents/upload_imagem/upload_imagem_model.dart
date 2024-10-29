import '/flutter_flow/flutter_flow_util.dart';
import 'upload_imagem_widget.dart' show UploadImagemWidget;
import 'package:flutter/material.dart';

class UploadImagemModel extends FlutterFlowModel<UploadImagemWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
