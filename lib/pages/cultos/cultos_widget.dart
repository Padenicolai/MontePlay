import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/compents/criar_culto/criar_culto_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cultos_model.dart';
export 'cultos_model.dart';

class CultosWidget extends StatefulWidget {
  const CultosWidget({super.key});

  @override
  State<CultosWidget> createState() => _CultosWidgetState();
}

class _CultosWidgetState extends State<CultosWidget>
    with TickerProviderStateMixin {
  late CultosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CultosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.outUser = await BuscarUserCall.call(
        userId: 'eq.$currentUserUid',
      );

      _model.status = BuscarUserCall.status(
        (_model.outUser?.jsonBody ?? ''),
      );
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 40.0.ms,
            duration: 870.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        floatingActionButton: Visibility(
          visible: _model.status == 'admin',
          child: FloatingActionButton(
            onPressed: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return WebViewAware(
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: const CriarCultoWidget(),
                      ),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 12.0,
            child: Icon(
              Icons.playlist_add_sharp,
              color: FlutterFlowTheme.of(context).info,
              size: 28.0,
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xF30F0D33),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed('homeMinisterios');
            },
          ),
          title: Text(
            'CULTOS',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Outfit'),
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: FutureBuilder<List<CultoRow>>(
          future: CultoTable().queryRows(
            queryFn: (q) => q
                .gteOrNull(
                  'data',
                  supaSerialize<DateTime>(getCurrentTimestamp),
                )
                .order('data', ascending: true),
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
            List<CultoRow> ctnCultoCultoRowList = snapshot.data!;

            return Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/fundo_tela_2.png',
                  ).image,
                ),
              ),
              child: Builder(
                builder: (context) {
                  final listCultos = ctnCultoCultoRowList.toList();

                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(listCultos.length, (listCultosIndex) {
                        final listCultosItem = listCultos[listCultosIndex];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 391.0,
                            height: 74.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Colors.white,
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'escala',
                                  queryParameters: {
                                    'idCulto': serializeParam(
                                      listCultosItem.id,
                                      ParamType.int,
                                    ),
                                    'data': serializeParam(
                                      listCultosItem.dataField,
                                      ParamType.DateTime,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );
                              },
                              child: Slidable(
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  extentRatio: 0.5,
                                  children: [
                                    SlidableAction(
                                      label: 'Editar',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .backgroundComponents,
                                      icon: Icons.edit_sharp,
                                      onPressed: (_) async {
                                        context.pushNamed(
                                          'criarEscala',
                                          queryParameters: {
                                            'idCulto': serializeParam(
                                              listCultosItem.id,
                                              ParamType.int,
                                            ),
                                            'data': serializeParam(
                                              listCultosItem.dataField,
                                              ParamType.DateTime,
                                            ),
                                          }.withoutNulls,
                                        );

                                        _model.apiResult08a =
                                            await SupabaseGroup.getBloqueiosCall
                                                .call(
                                          idCulto:
                                              'eq.${listCultosItem.id.toString()}',
                                        );

                                        FFAppState().listaUsuariosBloqueados =
                                            SupabaseGroup.getBloqueiosCall
                                                .idUsuario(
                                                  (_model.apiResult08a
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                .toList()
                                                .cast<int>();
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                    ),
                                    SlidableAction(
                                      label: 'Delete',
                                      backgroundColor: const Color(0xFF520202),
                                      icon: Icons.delete_forever,
                                      onPressed: (_) async {
                                        _model.outDel =
                                            await CultoTable().delete(
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            listCultosItem.id,
                                          ),
                                          returnRows: true,
                                        );

                                        safeSetState(() {});
                                      },
                                    ),
                                  ],
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.playlist_add_circle,
                                      color: Color(0xF0090909),
                                      size: 40.0,
                                    ),
                                    title: Text(
                                      listCultosItem.nomeCulto!,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily),
                                          ),
                                    ),
                                    subtitle: Text(
                                      dateTimeFormat(
                                        "d/M/y",
                                        listCultosItem.dataField!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily),
                                          ),
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 30.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        );
                      })
                              .divide(const SizedBox(height: 10.0))
                              .addToStart(const SizedBox(height: 16.0)),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
