import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nomefuncao_model.dart';
export 'nomefuncao_model.dart';

class NomefuncaoWidget extends StatefulWidget {
  const NomefuncaoWidget({
    super.key,
    required this.nome,
  });

  final String? nome;

  @override
  State<NomefuncaoWidget> createState() => _NomefuncaoWidgetState();
}

class _NomefuncaoWidgetState extends State<NomefuncaoWidget> {
  late NomefuncaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NomefuncaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ViewFuncaoGrupoRow>>(
      future: ViewFuncaoGrupoTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitRipple(
                color: Color(0xFFCCC9C9),
                size: 50.0,
              ),
            ),
          );
        }
        List<ViewFuncaoGrupoRow> switchListTileViewFuncaoGrupoRowList =
            snapshot.data!;

        return Material(
          color: Colors.transparent,
          child: SwitchListTile.adaptive(
            value: _model.switchListTileValue ??= false,
            onChanged: (newValue) async {
              safeSetState(() => _model.switchListTileValue = newValue);
              if (newValue) {
                await FuncoesTable().insert({
                  'u_user': currentUserUid,
                });
              }
            },
            title: Text(
              widget.nome!,
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleLargeFamily),
                  ),
            ),
            tileColor: FlutterFlowTheme.of(context).secondaryBackground,
            activeColor: FlutterFlowTheme.of(context).primary,
            activeTrackColor: FlutterFlowTheme.of(context).accent1,
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        );
      },
    );
  }
}
