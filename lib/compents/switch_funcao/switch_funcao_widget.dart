import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'switch_funcao_model.dart';
export 'switch_funcao_model.dart';

class SwitchFuncaoWidget extends StatefulWidget {
  const SwitchFuncaoWidget({
    super.key,
    required this.userId,
    required this.usuarioId,
    required this.ministerioId,
  });

  final String? userId;
  final int? usuarioId;
  final int? ministerioId;

  @override
  State<SwitchFuncaoWidget> createState() => _SwitchFuncaoWidgetState();
}

class _SwitchFuncaoWidgetState extends State<SwitchFuncaoWidget> {
  late SwitchFuncaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchFuncaoModel());

    _model.switchValue =
        FFAppState().listaFuncaoUsuario1.contains(widget.ministerioId);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        safeSetState(() => _model.switchValue = newValue);
        if (newValue) {
          await FuncoesTable().insert({
            'user_id': widget.usuarioId,
            'u_user': widget.userId,
            'ministerios_id': widget.ministerioId,
          });
          FFAppState()
              .addToListaFuncaoUsuario(widget.ministerioId!.toString());
          safeSetState(() {});
        } else {
          _model.delFuncao = await FuncoesTable().delete(
            matchingRows: (rows) => rows
                .eq(
                  'user_id',
                  widget.usuarioId,
                )
                .eq(
                  'u_user',
                  widget.userId,
                )
                .eq(
                  'ministerios_id',
                  widget.ministerioId,
                ),
            returnRows: true,
          );
          FFAppState()
              .removeFromListaFuncaoUsuario(widget.ministerioId!.toString());
          safeSetState(() {});

          safeSetState(() {});
        }
      },
      activeColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
