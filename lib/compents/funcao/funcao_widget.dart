import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'funcao_model.dart';
export 'funcao_model.dart';

class FuncaoWidget extends StatefulWidget {
  const FuncaoWidget({
    super.key,
    required this.nomeministerio,
    required this.idgrupo,
  });

  final String? nomeministerio;
  final int? idgrupo;

  @override
  State<FuncaoWidget> createState() => _FuncaoWidgetState();
}

class _FuncaoWidgetState extends State<FuncaoWidget> {
  late FuncaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FuncaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SwitchListTile.adaptive(
        value: _model.switchListTileValue ??= false,
        onChanged: (newValue) async {
          safeSetState(() => _model.switchListTileValue = newValue);
        },
        title: Text(
          widget.nomeministerio!,
          style: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                color: Colors.black,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
              ),
        ),
        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).accent1,
        dense: false,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }
}
