import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cmp_repertorio_model.dart';
export 'cmp_repertorio_model.dart';

class CmpRepertorioWidget extends StatefulWidget {
  const CmpRepertorioWidget({
    super.key,
    required this.idCulto,
    this.atualizarLista,
  });

  final int? idCulto;
  final Future Function()? atualizarLista;

  @override
  State<CmpRepertorioWidget> createState() => _CmpRepertorioWidgetState();
}

class _CmpRepertorioWidgetState extends State<CmpRepertorioWidget> {
  late CmpRepertorioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CmpRepertorioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            color: Color(0xFF181818),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xFFF0F2F4),
                      size: 26.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter ??=
                            Completer<ApiCallResponse>()
                              ..complete(RepertorioCall.call(
                                varlimit: 10,
                                varoffset: valueOrDefault<int>(
                                  _model.cmppage,
                                  0,
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
                      final listViewRepertorioResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final rep =
                              listViewRepertorioResponse.jsonBody.toList();

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: rep.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                            itemBuilder: (context, repIndex) {
                              final repItem = rep[repIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 1.0,
                                  child: Container(
                                    width: 114.0,
                                    height: 272.0,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                          spreadRadius: 3.0,
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Flexible(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 2.0,
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.network(
                                                          getJsonField(
                                                            repItem,
                                                            r'''$.thumbnails''',
                                                          ).toString(),
                                                          width: 310.0,
                                                          height: 185.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 44.0,
                                                    height: 185.0,
                                                    decoration: const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderRadius: 25.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 45.0,
                                                          hoverColor:
                                                              const Color(0xEC57636C),
                                                          hoverIconColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          icon: const Icon(
                                                            Icons.add,
                                                            color: Color(
                                                                0xFFEBEDEE),
                                                            size: 28.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            _model.insertMusic =
                                                                await RepertorioCultoTable()
                                                                    .insert({
                                                              'idculto': widget
                                                                  .idCulto,
                                                              'idmusica':
                                                                  getJsonField(
                                                                repItem,
                                                                r'''$.id''',
                                                              ),
                                                            });
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Música adicionada à playlist',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                              ),
                                                            );

                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 8.0, 10.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    getJsonField(
                                                      repItem,
                                                      r'''$.titulo''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 3.0, 10.0, 3.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    getJsonField(
                                                      repItem,
                                                      r'''$.cantor''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color:
                                                              const Color(0xFFF7F7F8),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Montserrat'),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            controller: _model.listViewController,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 391.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 45.0,
                            hoverColor: FlutterFlowTheme.of(context).alternate,
                            icon: FaIcon(
                              FontAwesomeIcons.arrowAltCircleLeft,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 28.0,
                            ),
                            onPressed: () async {
                              _model.cmppage = _model.cmppage! + -10;
                              safeSetState(() {});
                              safeSetState(
                                  () => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                              await _model.listViewController?.animateTo(
                                0,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.ease,
                              );
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 45.0,
                            hoverColor: FlutterFlowTheme.of(context).alternate,
                            icon: FaIcon(
                              FontAwesomeIcons.arrowAltCircleRight,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 28.0,
                            ),
                            onPressed: () async {
                              _model.cmppage = _model.cmppage! + 10;
                              safeSetState(() {});
                              safeSetState(
                                  () => _model.apiRequestCompleter = null);
                              await _model.listViewController?.animateTo(
                                0,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.ease,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
