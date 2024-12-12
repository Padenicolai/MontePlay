import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'drdfuncao_model.dart';
export 'drdfuncao_model.dart';

class DrdfuncaoWidget extends StatefulWidget {
  const DrdfuncaoWidget({
    super.key,
    required this.id,
    required this.idEscala,
    required this.idGrupo,
  });

  final int? id;
  final int? idEscala;
  final int? idGrupo;

  @override
  State<DrdfuncaoWidget> createState() => _DrdfuncaoWidgetState();
}

class _DrdfuncaoWidgetState extends State<DrdfuncaoWidget> {
  late DrdfuncaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrdfuncaoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultaj3 = await SupabaseGroup.getFuncaoGrupoCall.call(
        idUser: widget.id,
        idGrupo: widget.idGrupo,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ViewUsuarioFuncaoMinisterioRow>>(
      future: ViewUsuarioFuncaoMinisterioTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'idusuario',
              widget.id,
            )
            .eqOrNull(
              'grupo',
              widget.idGrupo,
            )
            .order('idministerio', ascending: true),
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
        List<ViewUsuarioFuncaoMinisterioRow>
            dpdfuncaoViewUsuarioFuncaoMinisterioRowList = snapshot.data!;

        return FlutterFlowDropDown<int>(
          controller: _model.dpdfuncaoValueController ??=
              FormFieldController<int>(null),
          options: List<int>.from(dpdfuncaoViewUsuarioFuncaoMinisterioRowList
              .map((e) => e.idministerio)
              .withoutNulls
              .toList()),
          optionLabels: dpdfuncaoViewUsuarioFuncaoMinisterioRowList
              .map((e) => e.ministerio)
              .withoutNulls
              .toList(),
          onChanged: (val) async {
            safeSetState(() => _model.dpdfuncaoValue = val);
            await Future.wait([
              Future(() async {
                _model.fcmToken = dpdfuncaoViewUsuarioFuncaoMinisterioRowList
                    .map((e) => e.fcmToken)
                    .withoutNulls
                    .toList()
                    .cast<String>();
                safeSetState(() {});
                _model.funcao = dpdfuncaoViewUsuarioFuncaoMinisterioRowList
                    .map((e) => e.ministerio)
                    .withoutNulls
                    .toList()
                    .cast<String>();
                safeSetState(() {});
                await NotEscalaTable().insert({
                  'titulo': 'Nova Escala!',
                  'corpo':
                      'Vamos Louvar! Você foi escalado para a função de ${_model.funcao.firstOrNull}. Confira a nova escala!',
                  'fcmtoken': _model.fcmToken,
                });
                _model.fcmToken = [];
                safeSetState(() {});
              }),
            ]);
            await EscalaTable().update(
              data: {
                'ministerio_id': _model.dpdfuncaoValue,
              },
              matchingRows: (rows) => rows.eqOrNull(
                'id',
                widget.idEscala,
              ),
            );
          },
          width: 300.0,
          height: 48.0,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: const Color(0xF7000000),
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
              ),
          hintText: 'Selecione a função...',
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: FlutterFlowTheme.of(context).alternate,
            size: 24.0,
          ),
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 3.0,
          borderColor: FlutterFlowTheme.of(context).alternate,
          borderWidth: 2.0,
          borderRadius: 10.0,
          margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
          hidesUnderline: true,
          isOverButton: true,
          isSearchable: false,
          isMultiSelect: false,
        );
      },
    );
  }
}
