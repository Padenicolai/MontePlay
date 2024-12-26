import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloqueios_model.dart';
export 'bloqueios_model.dart';

class BloqueiosWidget extends StatefulWidget {
  const BloqueiosWidget({
    super.key,
    required this.usuario,
  });

  final int? usuario;

  @override
  State<BloqueiosWidget> createState() => _BloqueiosWidgetState();
}

class _BloqueiosWidgetState extends State<BloqueiosWidget> {
  late BloqueiosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BloqueiosModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiGetCulto = await SupabaseGroup.getCultoCall.call();

      _model.cultos =
          (_model.apiGetCulto?.jsonBody ?? '').toList().cast<dynamic>();
      safeSetState(() {});
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
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 0.9,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close_sharp,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NOVO BLOQUEIO',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).alternate,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
            FlutterFlowDropDown<int>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<int>(
                _model.dropDownValue ??= SupabaseGroup.getCultoCall
                    .id(
                      (_model.apiGetCulto?.jsonBody ?? ''),
                    )
                    ?.firstOrNull,
              ),
              options: List<int>.from(SupabaseGroup.getCultoCall.id(
                (_model.apiGetCulto?.jsonBody ?? ''),
              )!),
              optionLabels: SupabaseGroup.getCultoCall.nomeCulto(
                (_model.apiGetCulto?.jsonBody ?? ''),
              )!,
              onChanged: (val) =>
                  safeSetState(() => _model.dropDownValue = val),
              width: 347.0,
              height: 40.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).alternate,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
              hintText: 'Selecione uma data...',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 0.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              hidesUnderline: true,
              isOverButton: false,
              isSearchable: false,
              isMultiSelect: false,
            ),
            FFButtonWidget(
              onPressed: () async {
                await BloqueiosTable().insert({
                  'usuario': widget.usuario,
                  'idCulto': _model.dropDownValue,
                  'userid': currentUserUid,
                });
                safeSetState(() => _model.requestCompleter = null);
                await _model.waitForRequestCompleted();
              },
              text: 'SALVAR',
              options: FFButtonOptions(
                width: double.infinity,
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryText,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).alternate,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 10.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MEUS BLOQUEIOS',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).alternate,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 45.0,
                  icon: const Icon(
                    Icons.remove_red_eye_sharp,
                    color: Color(0xC2090909),
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
            FutureBuilder<List<VBloqueiosRow>>(
              future:
                  (_model.requestCompleter ??= Completer<List<VBloqueiosRow>>()
                        ..complete(VBloqueiosTable().queryRows(
                          queryFn: (q) => q.eqOrNull(
                            'usuario_id',
                            widget.usuario,
                          ),
                        )))
                      .future,
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
                List<VBloqueiosRow> listViewVBloqueiosRowList = snapshot.data!;

                return ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewVBloqueiosRowList.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 4.0),
                  itemBuilder: (context, listViewIndex) {
                    final listViewVBloqueiosRow =
                        listViewVBloqueiosRowList[listViewIndex];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: const Color(0x8057636C),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        dateTimeFormat(
                                          "MMMMEEEEd",
                                          listViewVBloqueiosRow.dataField!,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await BloqueiosTable().delete(
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            listViewVBloqueiosRow.id,
                                          ),
                                        );
                                        safeSetState(() =>
                                            _model.requestCompleter = null);
                                        await _model.waitForRequestCompleted();
                                      },
                                      child: Icon(
                                        Icons.delete_outline,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 26.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    );
                  },
                );
              },
            ),
          ].divide(const SizedBox(height: 24.0)).addToEnd(const SizedBox(height: 48.0)),
        ),
      ),
    );
  }
}
