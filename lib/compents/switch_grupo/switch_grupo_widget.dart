import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'switch_grupo_model.dart';
export 'switch_grupo_model.dart';

class SwitchGrupoWidget extends StatefulWidget {
  const SwitchGrupoWidget({
    super.key,
    required this.usuarioId,
    required this.grupoId,
    required this.authId,
  });

  final int? usuarioId;
  final int? grupoId;
  final String? authId;

  @override
  State<SwitchGrupoWidget> createState() => _SwitchGrupoWidgetState();
}

class _SwitchGrupoWidgetState extends State<SwitchGrupoWidget> {
  late SwitchGrupoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchGrupoModel());

    _model.switchValue =
        FFAppState().listaGrupoUsuario1.contains(widget.grupoId);
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
          FFAppState().addToListaGrupoUsuario1(widget.grupoId!);
          FFAppState().addToListaUsuariosBloqueados(widget.grupoId!);
          safeSetState(() {});
          await CadastroGrupoTable().insert({
            'id_grupo': widget.grupoId,
            'id_usuario': widget.usuarioId,
          });
        } else {
          FFAppState().removeFromListaGrupoUsuario1(widget.grupoId!);
          FFAppState().removeFromListaUsuariosBloqueados(widget.grupoId!);
          safeSetState(() {});
          _model.delGrupo = await CadastroGrupoTable().delete(
            matchingRows: (rows) => rows
                .eqOrNull(
                  'id_usuario',
                  widget.usuarioId,
                )
                .eqOrNull(
                  'id_grupo',
                  widget.grupoId,
                ),
            returnRows: true,
          );

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
