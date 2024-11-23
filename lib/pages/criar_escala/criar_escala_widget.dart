import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/compents/drdfuncao/drdfuncao_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'criar_escala_model.dart';
export 'criar_escala_model.dart';

class CriarEscalaWidget extends StatefulWidget {
  const CriarEscalaWidget({
    super.key,
    required this.idCulto,
    required this.data,
  });

  final int? idCulto;
  final DateTime? data;

  @override
  State<CriarEscalaWidget> createState() => _CriarEscalaWidgetState();
}

class _CriarEscalaWidgetState extends State<CriarEscalaWidget>
    with TickerProviderStateMixin {
  late CriarEscalaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriarEscalaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiResult08a = await SupabaseGroup.getBloqueiosCall.call(
            idCulto: 'eq.${widget.idCulto?.toString()}',
          );

          FFAppState().listaUsuariosBloqueados = SupabaseGroup.getBloqueiosCall
              .idUsuario(
                (_model.apiResult08a?.jsonBody ?? ''),
              )!
              .toList()
              .cast<int>();
          safeSetState(() {});
        }),
        Future(() async {
          _model.apiResult12c = await SupabaseGroup.getRepertorioCall.call();
        }),
      ]);
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
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
              context.pushNamed('cultos');

              FFAppState().listaUsuariosBloqueados = [];
              safeSetState(() {});
            },
          ),
          title: Text(
            'CRIAR ESCALA',
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
        body: SafeArea(
          top: true,
          child: Container(
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Membros na escala',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFFF4F4F4),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Plus Jakarta Sans'),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 242.0,
                  decoration: const BoxDecoration(),
                  child: FutureBuilder<List<EscalasRow>>(
                    future: EscalasTable().queryRows(
                      queryFn: (q) => q.eqOrNull(
                        'culto_id',
                        widget.idCulto,
                      ),
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
                      List<EscalasRow> listViewEscalasRowList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listViewEscalasRowList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewEscalasRow =
                              listViewEscalasRowList[listViewIndex];
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 12.0, 12.0),
                                  child: Container(
                                    width: 176.0,
                                    height: 217.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x34090F13),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    listViewEscalasRow.foto,
                                                    'https://cdn-icons-png.flaticon.com/512/4675/4675159.png',
                                                  ),
                                                  width: 80.0,
                                                  height: 80.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: AutoSizeText(
                                                  valueOrDefault<String>(
                                                    listViewEscalasRow.usuario,
                                                    'padrão',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF14181B),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          listViewEscalasRow
                                                              .nomeMinisterio,
                                                          'função',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              color: const Color(
                                                                  0xFF57636C),
                                                              fontSize: 13.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Plus Jakarta Sans'),
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    listViewEscalasRow.icon,
                                                    'https://media.istockphoto.com/id/1175435360/pt/vetorial/music-note-icon-vector-illustration.jpg?s=612x612&w=0&k=20&c=kL6LRAMGOQJkY9TnKmjC0czitvEtXUGtbLMHysn3YoM=',
                                                  ),
                                                  width: 45.0,
                                                  height: 45.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 5.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.outDel =
                                                  await EscalaTable().delete(
                                                matchingRows: (rows) => rows
                                                    .eqOrNull(
                                                      'usuarios_id',
                                                      listViewEscalasRow
                                                          .usuarioId,
                                                    )
                                                    .eqOrNull(
                                                      'ministerio_id',
                                                      listViewEscalasRow
                                                          .ministerioId,
                                                    )
                                                    .eqOrNull(
                                                      'idCulto',
                                                      widget.idCulto,
                                                    ),
                                                returnRows: true,
                                              );

                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.delete_forever_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 28.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Adicionar Membros',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: const Color(0xFFF4F4F4),
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelLargeFamily),
                            ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: SafeArea(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0.0, 0),
                                      child: FlutterFlowButtonTabBar(
                                        useToggleButtonStyle: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Montserrat'),
                                            ),
                                        unselectedLabelStyle: const TextStyle(),
                                        labelColor: const Color(0xFFEFEFF9),
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        backgroundColor: const Color(0xF4171A49),
                                        unselectedBackgroundColor:
                                            const Color(0xB466666B),
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        unselectedBorderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 3.0,
                                        borderRadius: 8.0,
                                        elevation: 3.0,
                                        buttonMargin:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                8.0, 0.0, 8.0, 0.0),
                                        padding: const EdgeInsets.all(6.0),
                                        tabs: const [
                                          Tab(
                                            text: 'LOUVOR',
                                          ),
                                          Tab(
                                            text: 'IDE',
                                          ),
                                          Tab(
                                            text: 'MÍDIA',
                                          ),
                                          Tab(
                                            text: 'INFANTIL',
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [
                                            () async {},
                                            () async {},
                                            () async {},
                                            () async {}
                                          ][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          SafeArea(
                                            child: Container(
                                              height: 219.0,
                                              decoration: const BoxDecoration(),
                                              child: FutureBuilder<
                                                  List<VEscalagrupoRow>>(
                                                future: VEscalagrupoTable()
                                                    .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'idgrupo',
                                                    1,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return const Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitRipple(
                                                          color:
                                                              Color(0xFFCCC9C9),
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VEscalagrupoRow>
                                                      listViewVEscalagrupoRowList =
                                                      snapshot.data!;

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewVEscalagrupoRowList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewVEscalagrupoRow =
                                                          listViewVEscalagrupoRowList[
                                                              listViewIndex];
                                                      return Visibility(
                                                        visible: FFAppState()
                                                                .listaUsuariosBloqueados
                                                                .contains(
                                                                    listViewVEscalagrupoRow
                                                                        .idUsuario) !=
                                                            true,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x32000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(26.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              listViewVEscalagrupoRow.foto,
                                                                              'https://cdn-icons-png.flaticon.com/512/4675/4675159.png',
                                                                            ),
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              AutoSizeText(
                                                                            valueOrDefault<String>(
                                                                              listViewVEscalagrupoRow.nomeUsuario,
                                                                              'padrao',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  color: Colors.black,
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.checkboxValueMap1[listViewVEscalagrupoRow] ??=
                                                                                false,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              safeSetState(() => _model.checkboxValueMap1[listViewVEscalagrupoRow] = newValue!);
                                                                              if (newValue!) {
                                                                                await Future.wait([
                                                                                  Future(() async {
                                                                                    _model.idcultolouvor = await EscalaTable().insert({
                                                                                      'idCulto': widget.idCulto,
                                                                                      'usuarios_id': listViewVEscalagrupoRow.idUsuario,
                                                                                    });
                                                                                  }),
                                                                                  Future(() async {
                                                                                    _model.addToFcmToken(listViewVEscalagrupoRow.token!);
                                                                                    safeSetState(() {});
                                                                                    await NotEscalaTable().insert({
                                                                                      'titulo': 'Nova Escala!',
                                                                                      'corpo': 'Vamos louvar. Você foi escalado. Confira a data do culto!',
                                                                                      'fcmtoken': _model.fcmToken,
                                                                                    });
                                                                                    _model.fcmToken = [];
                                                                                    safeSetState(() {});
                                                                                  }),
                                                                                ]);

                                                                                safeSetState(() {});
                                                                              }
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (valueOrDefault<
                                                                      bool>(
                                                                    _model.checkboxValueMap1[
                                                                            listViewVEscalagrupoRow] ==
                                                                        true,
                                                                    false,
                                                                  ))
                                                                    DrdfuncaoWidget(
                                                                      key: Key(
                                                                          'Key855_${listViewIndex}_of_${listViewVEscalagrupoRowList.length}'),
                                                                      id: valueOrDefault<
                                                                          int>(
                                                                        listViewVEscalagrupoRow
                                                                            .idUsuario,
                                                                        0,
                                                                      ),
                                                                      idEscala: _model
                                                                          .idcultolouvor!
                                                                          .id,
                                                                      idGrupo:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        listViewVEscalagrupoRow
                                                                            .idgrupo,
                                                                        0,
                                                                      ),
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        3.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          SafeArea(
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: FutureBuilder<
                                                  List<VEscalagrupoRow>>(
                                                future: VEscalagrupoTable()
                                                    .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'idgrupo',
                                                    2,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return const Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitRipple(
                                                          color:
                                                              Color(0xFFCCC9C9),
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VEscalagrupoRow>
                                                      listViewVEscalagrupoRowList =
                                                      snapshot.data!;

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewVEscalagrupoRowList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewVEscalagrupoRow =
                                                          listViewVEscalagrupoRowList[
                                                              listViewIndex];
                                                      return Visibility(
                                                        visible: FFAppState()
                                                                .listaUsuariosBloqueados
                                                                .contains(
                                                                    listViewVEscalagrupoRow
                                                                        .idUsuario) !=
                                                            true,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x32000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(24.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              listViewVEscalagrupoRow.foto,
                                                                              'https://cdn-icons-png.flaticon.com/512/4675/4675159.png',
                                                                            ),
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        AutoSizeText(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewVEscalagrupoRow.nomeUsuario,
                                                                            'padrao',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.checkboxValueMap2[listViewVEscalagrupoRow] ??=
                                                                                false,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              safeSetState(() => _model.checkboxValueMap2[listViewVEscalagrupoRow] = newValue!);
                                                                              if (newValue!) {
                                                                                await Future.wait([
                                                                                  Future(() async {
                                                                                    _model.idcultodanca = await EscalaTable().insert({
                                                                                      'idCulto': widget.idCulto,
                                                                                      'usuarios_id': listViewVEscalagrupoRow.idUsuario,
                                                                                    });
                                                                                  }),
                                                                                  Future(() async {
                                                                                    _model.addToFcmToken(listViewVEscalagrupoRow.token!);
                                                                                    safeSetState(() {});
                                                                                    await NotEscalaTable().insert({
                                                                                      'titulo': 'Nova Escala!',
                                                                                      'corpo': 'Vamos louvar. Você foi escalado. Confira a data do culto!',
                                                                                      'fcmtoken': _model.fcmToken,
                                                                                    });
                                                                                    _model.fcmToken = [];
                                                                                    safeSetState(() {});
                                                                                  }),
                                                                                ]);

                                                                                safeSetState(() {});
                                                                              }
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (valueOrDefault<
                                                                      bool>(
                                                                    _model.checkboxValueMap2[
                                                                            listViewVEscalagrupoRow] ==
                                                                        true,
                                                                    false,
                                                                  ))
                                                                    DrdfuncaoWidget(
                                                                      key: Key(
                                                                          'Keycq1_${listViewIndex}_of_${listViewVEscalagrupoRowList.length}'),
                                                                      id: listViewVEscalagrupoRow
                                                                          .idUsuario!,
                                                                      idEscala: _model
                                                                          .idcultodanca!
                                                                          .id,
                                                                      idGrupo:
                                                                          listViewVEscalagrupoRow
                                                                              .idgrupo!,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        3.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          SafeArea(
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: FutureBuilder<
                                                  List<VEscalagrupoRow>>(
                                                future: VEscalagrupoTable()
                                                    .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'idgrupo',
                                                    3,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return const Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitRipple(
                                                          color:
                                                              Color(0xFFCCC9C9),
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VEscalagrupoRow>
                                                      listViewVEscalagrupoRowList =
                                                      snapshot.data!;

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewVEscalagrupoRowList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewVEscalagrupoRow =
                                                          listViewVEscalagrupoRowList[
                                                              listViewIndex];
                                                      return Visibility(
                                                        visible: FFAppState()
                                                                .listaUsuariosBloqueados
                                                                .contains(
                                                                    listViewVEscalagrupoRow
                                                                        .idUsuario) !=
                                                            true,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x32000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(26.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              listViewVEscalagrupoRow.foto,
                                                                              'https://cdn-icons-png.flaticon.com/512/4675/4675159.png',
                                                                            ),
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        AutoSizeText(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewVEscalagrupoRow.nomeUsuario,
                                                                            'padrao',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: Colors.black,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.checkboxValueMap3[listViewVEscalagrupoRow] ??=
                                                                                false,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              safeSetState(() => _model.checkboxValueMap3[listViewVEscalagrupoRow] = newValue!);
                                                                              if (newValue!) {
                                                                                await Future.wait([
                                                                                  Future(() async {
                                                                                    _model.idcultomidia = await EscalaTable().insert({
                                                                                      'idCulto': widget.idCulto,
                                                                                      'usuarios_id': listViewVEscalagrupoRow.idUsuario,
                                                                                    });
                                                                                  }),
                                                                                  Future(() async {
                                                                                    _model.addToFcmToken(listViewVEscalagrupoRow.token!);
                                                                                    safeSetState(() {});
                                                                                    await NotEscalaTable().insert({
                                                                                      'titulo': 'Nova Escala!',
                                                                                      'corpo': 'Vamos louvar. Você foi escalado. Confira a data do culto!',
                                                                                      'fcmtoken': _model.fcmToken,
                                                                                    });
                                                                                    _model.fcmToken = [];
                                                                                    safeSetState(() {});
                                                                                  }),
                                                                                ]);

                                                                                safeSetState(() {});
                                                                              }
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (valueOrDefault<
                                                                      bool>(
                                                                    _model.checkboxValueMap3[
                                                                            listViewVEscalagrupoRow] ==
                                                                        true,
                                                                    false,
                                                                  ))
                                                                    DrdfuncaoWidget(
                                                                      key: Key(
                                                                          'Key9fd_${listViewIndex}_of_${listViewVEscalagrupoRowList.length}'),
                                                                      id: listViewVEscalagrupoRow
                                                                          .idUsuario!,
                                                                      idEscala: _model
                                                                          .idcultomidia!
                                                                          .id,
                                                                      idGrupo:
                                                                          listViewVEscalagrupoRow
                                                                              .idgrupo!,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        3.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          SafeArea(
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: FutureBuilder<
                                                  List<VEscalagrupoRow>>(
                                                future: VEscalagrupoTable()
                                                    .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'idgrupo',
                                                    4,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return const Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child: SpinKitRipple(
                                                          color:
                                                              Color(0xFFCCC9C9),
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VEscalagrupoRow>
                                                      listViewVEscalagrupoRowList =
                                                      snapshot.data!;

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewVEscalagrupoRowList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewVEscalagrupoRow =
                                                          listViewVEscalagrupoRowList[
                                                              listViewIndex];
                                                      return Visibility(
                                                        visible: FFAppState()
                                                                .listaUsuariosBloqueados
                                                                .contains(
                                                                    listViewVEscalagrupoRow
                                                                        .idUsuario) !=
                                                            true,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x32000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(26.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              listViewVEscalagrupoRow.foto,
                                                                              'https://cdn-icons-png.flaticon.com/512/4675/4675159.png',
                                                                            ),
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        AutoSizeText(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewVEscalagrupoRow.nomeUsuario,
                                                                            'padrao',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 18.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                        ),
                                                                        Theme(
                                                                          data:
                                                                              ThemeData(
                                                                            checkboxTheme:
                                                                                CheckboxThemeData(
                                                                              visualDensity: VisualDensity.compact,
                                                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            unselectedWidgetColor:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                          ),
                                                                          child:
                                                                              Checkbox(
                                                                            value: _model.checkboxValueMap4[listViewVEscalagrupoRow] ??=
                                                                                false,
                                                                            onChanged:
                                                                                (newValue) async {
                                                                              safeSetState(() => _model.checkboxValueMap4[listViewVEscalagrupoRow] = newValue!);
                                                                              if (newValue!) {
                                                                                await Future.wait([
                                                                                  Future(() async {
                                                                                    _model.idcultoinfantil = await EscalaTable().insert({
                                                                                      'idCulto': widget.idCulto,
                                                                                      'usuarios_id': listViewVEscalagrupoRow.idUsuario,
                                                                                    });
                                                                                  }),
                                                                                  Future(() async {
                                                                                    _model.addToFcmToken(listViewVEscalagrupoRow.token!);
                                                                                    safeSetState(() {});
                                                                                    await NotEscalaTable().insert({
                                                                                      'titulo': 'Nova Escala!',
                                                                                      'corpo': 'Vamos louvar. Você foi escalado. Confira a data do culto!',
                                                                                      'fcmtoken': _model.fcmToken,
                                                                                    });
                                                                                    _model.fcmToken = [];
                                                                                    safeSetState(() {});
                                                                                  }),
                                                                                ]);

                                                                                safeSetState(() {});
                                                                              } else {
                                                                                _model.idcultoinfantilCopy = await EscalaTable().delete(
                                                                                  matchingRows: (rows) => rows
                                                                                      .eqOrNull(
                                                                                        'idCulto',
                                                                                        widget.idCulto,
                                                                                      )
                                                                                      .eqOrNull(
                                                                                        'usuarios_id',
                                                                                        listViewVEscalagrupoRow.idUsuario,
                                                                                      ),
                                                                                  returnRows: true,
                                                                                );

                                                                                safeSetState(() {});
                                                                              }
                                                                            },
                                                                            side:
                                                                                BorderSide(
                                                                              width: 2,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            activeColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            checkColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (valueOrDefault<
                                                                      bool>(
                                                                    _model.checkboxValueMap4[
                                                                            listViewVEscalagrupoRow] ==
                                                                        true,
                                                                    false,
                                                                  ))
                                                                    DrdfuncaoWidget(
                                                                      key: Key(
                                                                          'Keyssd_${listViewIndex}_of_${listViewVEscalagrupoRowList.length}'),
                                                                      id: listViewVEscalagrupoRow
                                                                          .idUsuario!,
                                                                      idEscala: _model
                                                                          .idcultoinfantil!
                                                                          .id,
                                                                      idGrupo:
                                                                          listViewVEscalagrupoRow
                                                                              .idgrupo!,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        3.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
      ),
    );
  }
}
