import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'grupo_model.dart';
export 'grupo_model.dart';

class GrupoWidget extends StatefulWidget {
  const GrupoWidget({super.key});

  @override
  State<GrupoWidget> createState() => _GrupoWidgetState();
}

class _GrupoWidgetState extends State<GrupoWidget> {
  late GrupoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GrupoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GrupoRow>>(
      future: GrupoTable().queryRows(
        queryFn: (q) => q.order('id', ascending: true),
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
        List<GrupoRow> choiceChipsGrupoRowList = snapshot.data!;

        return FlutterFlowChoiceChips(
          options: choiceChipsGrupoRowList
              .map((e) => e.nomeGrupo)
              .withoutNulls
              .toList()
              .map((label) => ChipData(label))
              .toList(),
          onChanged: (val) =>
              safeSetState(() => _model.choiceChipsValues = val),
          selectedChipStyle: ChipStyle(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
            iconColor: FlutterFlowTheme.of(context).primaryText,
            iconSize: 18.0,
            elevation: 4.0,
            borderRadius: BorderRadius.circular(16.0),
          ),
          unselectedChipStyle: ChipStyle(
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
            iconColor: FlutterFlowTheme.of(context).secondaryText,
            iconSize: 18.0,
            elevation: 0.0,
            borderRadius: BorderRadius.circular(16.0),
          ),
          chipSpacing: 12.0,
          rowSpacing: 12.0,
          multiselect: true,
          initialized: _model.choiceChipsValues != null,
          alignment: WrapAlignment.start,
          controller: _model.choiceChipsValueController ??=
              FormFieldController<List<String>>(
            [],
          ),
          wrapped: true,
        );
      },
    );
  }
}
