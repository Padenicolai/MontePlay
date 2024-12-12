import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/compents/perfil/perfil_widget.dart';
import '/compents/upload_imagem/upload_imagem_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:math';
import 'dart:math' as math;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget>
    with TickerProviderStateMixin {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          await UsuariosTable().update(
            data: {
              'user_id': currentUserUid,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'user_id',
              currentUserUid,
            ),
          );
          _model.outUser = await SupabaseGroup.getUsuariosCall.call(
            userId: 'eq.$currentUserUid',
          );

          _model.status = SupabaseGroup.getUsuariosCall.status(
            (_model.outUser?.jsonBody ?? ''),
          );
          safeSetState(() {});
        }),
        Future(() async {
          _model.apiResultLive = await PastoresGroup.apirepertorioCall.call(
            id: 'PLWta_utq-RWo9fTNuHqLqWRvtDNkXL5LI',
            yourApiKey: FFAppState().apikey,
          );

          _model.status = PastoresGroup.apirepertorioCall
              .videoid(
                (_model.apiResultLive?.jsonBody ?? ''),
              )
              ?.firstOrNull;
          safeSetState(() {});
        }),
        Future(() async {
          _model.apiResult5we = await SupabaseGroup.getAdminTokensCall.call();

          FFAppState().fcmTokenAdmins = SupabaseGroup.getAdminTokensCall
              .fcmtoken(
                (_model.apiResult5we?.jsonBody ?? ''),
              )!
              .map((e) => e.toString())
              .toList()
              .toList()
              .cast<String>();
          safeSetState(() {});
        }),
      ]);
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.9, 0.9),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.9, 0.9),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.9, 0.9),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 800.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.9, 0.9),
          ),
        ],
      ),
      'transformOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(30.0, -30.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return YoutubeFullScreenWrapper(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF161634),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            scaffoldKey.currentState!.openEndDrawer();
          },
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          elevation: 10.0,
          child: Icon(
            Icons.person_2,
            color: FlutterFlowTheme.of(context).alternate,
            size: 24.0,
          ),
        ),
        endDrawer: Drawer(
          elevation: 16.0,
          child: WebViewAware(
            child: wrapWithModel(
              model: _model.perfilModel,
              updateCallback: () => safeSetState(() {}),
              child: PerfilWidget(
                userid: currentUserUid,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  constraints: const BoxConstraints(
                    maxHeight: 926.0,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF090909),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/fundo_tela_2.png',
                      ).image,
                    ),
                  ),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 20.0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 257.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x00FFFFFF),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                  ),
                                  border: Border.all(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: SizedBox(
                                  width: 20.0,
                                  height: 0.0,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/CAPA_COM_LOGO_(2).png',
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 601.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (PastoresGroup.apirepertorioCall.items(
                                  (_model.apiResultLive?.jsonBody ?? ''),
                                ) !=
                                null &&
                            (PastoresGroup.apirepertorioCall.items(
                              (_model.apiResultLive?.jsonBody ?? ''),
                            ))!
                                .isNotEmpty)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'O CULTO COMEÇOU! ASSISTA AQUI',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                shadows: [
                                                  Shadow(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    offset: const Offset(2.0, 2.0),
                                                    blurRadius: 2.0,
                                                  )
                                                ],
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey(
                                                            'Montserrat'),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 350.0,
                                              height: 233.0,
                                              decoration: const BoxDecoration(),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 3.0,
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowYoutubePlayer(
                                                        url: 'https://www.youtube.com/watch?v=${PastoresGroup.apirepertorioCall.videoid(
                                                              (_model.apiResultLive
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )?.firstOrNull}',
                                                        autoPlay: false,
                                                        looping: true,
                                                        mute: false,
                                                        showControls: true,
                                                        showFullScreen: true,
                                                        strictRelatedVideos:
                                                            true,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.02, 1.13),
                                                    child: Builder(
                                                      builder: (context) =>
                                                          InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await Share.share(
                                                            'https://www.youtube.com/watch?v=${PastoresGroup.apirepertorioCall.videoid(
                                                                  (_model.apiResultLive
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )?.firstOrNull}',
                                                            sharePositionOrigin:
                                                                getWidgetBoundingBox(
                                                                    context),
                                                          );
                                                        },
                                                        child: Icon(
                                                          Icons.share,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 36.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(),
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Flexible(
                          child: Container(
                            width: 327.0,
                            height: 81.0,
                            decoration: const BoxDecoration(),
                            child: Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                if (FFAppState().esconder == false)
                                  Align(
                                    alignment: const AlignmentDirectional(0.4, 0.06),
                                    child: Text(
                                      'Conheça nossas redes sociais!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                Align(
                                  alignment: const AlignmentDirectional(0.9, 0.53),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      width: 302.0,
                                      height: 90.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0x014B39EF),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 2.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 75.0,
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  onEnter:
                                                                      ((event) async {
                                                                    safeSetState(() =>
                                                                        _model.mouseRegionHovered1 =
                                                                            true);
                                                                    if (animationsMap[
                                                                            'containerOnActionTriggerAnimation3'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'containerOnActionTriggerAnimation3']!
                                                                          .controller
                                                                          .forward()
                                                                          .whenComplete(animationsMap['containerOnActionTriggerAnimation3']!
                                                                              .controller
                                                                              .reverse);
                                                                    }
                                                                  }),
                                                                  onExit:
                                                                      ((event) async {
                                                                    safeSetState(() =>
                                                                        _model.mouseRegionHovered1 =
                                                                            false);
                                                                  }),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await launchURL(
                                                                          'https://www.facebook.com/icmsagudos/?locale=pt_BR');
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          60.0,
                                                                      height:
                                                                          60.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        image:
                                                                            DecorationImage(
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          image:
                                                                              Image.asset(
                                                                            'assets/images/facebook.png',
                                                                          ).image,
                                                                        ),
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                Color(0xA3000000),
                                                                            offset:
                                                                                Offset(
                                                                              0.0,
                                                                              2.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                  ).animateOnActionTrigger(
                                                                    animationsMap[
                                                                        'containerOnActionTriggerAnimation3']!,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'containerOnActionTriggerAnimation2']!,
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 70.0,
                                                          height: 75.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                onEnter:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered2 =
                                                                          true);
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation5'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation5']!
                                                                        .controller
                                                                        .forward()
                                                                        .whenComplete(animationsMap['containerOnActionTriggerAnimation5']!
                                                                            .controller
                                                                            .reverse);
                                                                  }
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered2 =
                                                                          false);
                                                                }),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchURL(
                                                                        'https://www.instagram.com/montesanto.agudos/');
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/instagram_(1).png',
                                                                        ).image,
                                                                      ),
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0xB0000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation5']!,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation4']!,
                                                        ),
                                                        Container(
                                                          width: 70.0,
                                                          height: 75.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                onEnter:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered3 =
                                                                          true);
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation7'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation7']!
                                                                        .controller
                                                                        .forward()
                                                                        .whenComplete(animationsMap['containerOnActionTriggerAnimation7']!
                                                                            .controller
                                                                            .reverse);
                                                                  }
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered3 =
                                                                          false);
                                                                }),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchURL(
                                                                        'https://www.youtube.com/@montesanto.agudos');
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/youtube_(1).png',
                                                                        ).image,
                                                                      ),
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0xAE000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation7']!,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation6']!,
                                                        ),
                                                        Container(
                                                          width: 70.0,
                                                          height: 75.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0x00FFFFFF),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                onEnter:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered4 =
                                                                          true);
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation9'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation9']!
                                                                        .controller
                                                                        .forward()
                                                                        .whenComplete(animationsMap['containerOnActionTriggerAnimation9']!
                                                                            .controller
                                                                            .reverse);
                                                                  }
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered4 =
                                                                          false);
                                                                }),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    await launchURL(
                                                                        'https://www.tiktok.com/@montesanto.agudos');
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        60.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .warning,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .asset(
                                                                          'assets/images/tik-tok.png',
                                                                        ).image,
                                                                      ),
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0xA3000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation9']!,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation8']!,
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 2.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation1']!,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.88, 0.16),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 4.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (FFAppState().openSocialMedia) {
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation1']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation2']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation4'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation4']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation6'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation6']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation8'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation8']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'transformOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'transformOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                          if (animationsMap[
                                                  'iconOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'iconOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                          FFAppState().openSocialMedia =
                                              !(FFAppState().openSocialMedia ??
                                                  true);
                                        } else {
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation2']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation4'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation4']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation6'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation6']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation8'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation8']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'transformOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'transformOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation1']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'iconOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'iconOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          FFAppState().openSocialMedia =
                                              !(FFAppState().openSocialMedia ??
                                                  true);
                                        }

                                        FFAppState().esconder =
                                            !(FFAppState().esconder ?? true);
                                        safeSetState(() {});
                                      },
                                      child: ClipOval(
                                        child: Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0xA7000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            gradient: LinearGradient(
                                              colors: [
                                                const Color(0xFF110958),
                                                FlutterFlowTheme.of(context)
                                                    .secondary
                                              ],
                                              stops: const [0.0, 1.0],
                                              begin: const AlignmentDirectional(
                                                  1.0, -0.87),
                                              end: const AlignmentDirectional(
                                                  -1.0, 0.87),
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              Transform.rotate(
                                                angle: -45.0 * (math.pi / 180),
                                                child: Icon(
                                                  Icons.ads_click_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 30.0,
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'transformOnActionTriggerAnimation']!,
                                              ),
                                              Icon(
                                                Icons.close,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                size: 30.0,
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'iconOnActionTriggerAnimation']!,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  'NOSSOS PASTORES',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            offset: const Offset(2.0, 2.0),
                                            blurRadius: 2.0,
                                          )
                                        ],
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Montserrat'),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 454.0,
                                    height: 259.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00F4F4F4),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -0.36),
                                      child: FutureBuilder<List<PastoresRow>>(
                                        future: FFAppState().pastores(
                                          requestFn: () =>
                                              PastoresTable().queryRows(
                                            queryFn: (q) => q.order('ordem',
                                                ascending: true),
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Image.asset(
                                              '',
                                            );
                                          }
                                          List<PastoresRow>
                                              carouselPastoresRowList =
                                              snapshot.data!;

                                          return SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.041,
                                            height: 258.0,
                                            child: CarouselSlider.builder(
                                              itemCount: carouselPastoresRowList
                                                  .length,
                                              itemBuilder:
                                                  (context, carouselIndex, _) {
                                                final carouselPastoresRow =
                                                    carouselPastoresRowList[
                                                        carouselIndex];
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'Pastores',
                                                        queryParameters: {
                                                          'nome':
                                                              serializeParam(
                                                            carouselPastoresRow
                                                                .nome,
                                                            ParamType.String,
                                                          ),
                                                          'bio': serializeParam(
                                                            carouselPastoresRow
                                                                .bio,
                                                            ParamType.String,
                                                          ),
                                                          'topImg':
                                                              serializeParam(
                                                            carouselPastoresRow
                                                                .foto,
                                                            ParamType.String,
                                                          ),
                                                          'youtube':
                                                              serializeParam(
                                                            carouselPastoresRow
                                                                .youtube,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .leftToRight,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          carouselPastoresRow
                                                              .minifoto,
                                                          'https://sepal.org.br/wp-content/uploads/2021/07/pastor_sem_pastor3.jpg',
                                                        ),
                                                        width: 319.0,
                                                        height: 187.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                              carouselController: _model
                                                      .carouselController1 ??=
                                                  CarouselSliderController(),
                                              options: CarouselOptions(
                                                initialPage: max(
                                                    0,
                                                    min(
                                                        0,
                                                        carouselPastoresRowList
                                                                .length -
                                                            1)),
                                                viewportFraction: 0.4,
                                                disableCenter: false,
                                                enlargeCenterPage: true,
                                                enlargeFactor: 0.32,
                                                enableInfiniteScroll: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                autoPlay: true,
                                                autoPlayAnimationDuration:
                                                    const Duration(milliseconds: 800),
                                                autoPlayInterval: const Duration(
                                                    milliseconds: (800 + 4000)),
                                                autoPlayCurve: Curves.linear,
                                                pauseAutoPlayInFiniteScroll:
                                                    true,
                                                onPageChanged: (index, _) =>
                                                    _model.carouselCurrentIndex1 =
                                                        index,
                                              ),
                                            ),
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'SÉRIES',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Montserrat'),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: FutureBuilder<List<SrieRow>>(
                            future: FFAppState().series(
                              requestFn: () => SrieTable().queryRows(
                                queryFn: (q) => q,
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
                              List<SrieRow> carouselSrieRowList =
                                  snapshot.data!;

                              return SizedBox(
                                width: double.infinity,
                                height: 130.0,
                                child: CarouselSlider.builder(
                                  itemCount: carouselSrieRowList.length,
                                  itemBuilder: (context, carouselIndex, _) {
                                    final carouselSrieRow =
                                        carouselSrieRowList[carouselIndex];
                                    return Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 5.0,
                                                color: Color(0xFE000000),
                                                offset: Offset(
                                                  3.0,
                                                  4.0,
                                                ),
                                                spreadRadius: 0.0,
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Ministracoes',
                                                queryParameters: {
                                                  'topImg': serializeParam(
                                                    carouselSrieRow.img,
                                                    ParamType.String,
                                                  ),
                                                  'youtube': serializeParam(
                                                    carouselSrieRow.youtube,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType
                                                            .leftToRight,
                                                    duration: Duration(
                                                        milliseconds: 600),
                                                  ),
                                                },
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(20.0),
                                                bottomRight:
                                                    Radius.circular(20.0),
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  carouselSrieRow.img,
                                                  'https://ministeriofiel.com.br/wp-content/uploads/2022/08/Pregando--660x330.png',
                                                ),
                                                width: 211.0,
                                                height: 173.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  carouselController:
                                      _model.carouselController2 ??=
                                          CarouselSliderController(),
                                  options: CarouselOptions(
                                    initialPage: max(0,
                                        min(0, carouselSrieRowList.length - 1)),
                                    viewportFraction: 0.4,
                                    disableCenter: true,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.35,
                                    enableInfiniteScroll: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: true,
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 1000),
                                    autoPlayInterval:
                                        const Duration(milliseconds: (1000 + 2000)),
                                    autoPlayCurve: Curves.linear,
                                    pauseAutoPlayInFiniteScroll: true,
                                    onPageChanged: (index, _) =>
                                        _model.carouselCurrentIndex2 = index,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'ESTUDOS',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                shadows: [
                                                  Shadow(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    offset: const Offset(2.0, 2.0),
                                                    blurRadius: 2.0,
                                                  )
                                                ],
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey(
                                                            'Montserrat'),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 400.0,
                                      height: 138.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                FutureBuilder<List<EstudosRow>>(
                                              future:
                                                  EstudosTable().querySingleRow(
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
                                                        color:
                                                            Color(0xFFCCC9C9),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<EstudosRow>
                                                    containerEstudosRowList =
                                                    snapshot.data!;

                                                final containerEstudosRow =
                                                    containerEstudosRowList
                                                            .isNotEmpty
                                                        ? containerEstudosRowList
                                                            .first
                                                        : null;

                                                return Container(
                                                  width: double.infinity,
                                                  height: 149.0,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 5.0,
                                                        color:
                                                            Color(0xF6090000),
                                                        offset: Offset(
                                                          3.0,
                                                          4.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'Ministracoes',
                                                        queryParameters: {
                                                          'topImg':
                                                              serializeParam(
                                                            containerEstudosRow
                                                                ?.imgcapa,
                                                            ParamType.String,
                                                          ),
                                                          'youtube':
                                                              serializeParam(
                                                            containerEstudosRow
                                                                ?.youTube,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .leftToRight,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          containerEstudosRow
                                                              ?.img,
                                                          'https://ministeriofiel.com.br/wp-content/uploads/2022/08/Pregando--660x330.png',
                                                        ),
                                                        width: 300.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
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
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'TEMAS',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                shadows: [
                                                  Shadow(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    offset: const Offset(2.0, 2.0),
                                                    blurRadius: 2.0,
                                                  )
                                                ],
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey(
                                                            'Montserrat'),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 400.0,
                                      height: 136.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: FutureBuilder<List<TemaRow>>(
                                        future: TemaTable().queryRows(
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
                                          List<TemaRow> carouselTemaRowList =
                                              snapshot.data!;

                                          return SizedBox(
                                            width: double.infinity,
                                            height: 128.0,
                                            child: CarouselSlider.builder(
                                              itemCount:
                                                  carouselTemaRowList.length,
                                              itemBuilder:
                                                  (context, carouselIndex, _) {
                                                final carouselTemaRow =
                                                    carouselTemaRowList[
                                                        carouselIndex];
                                                return Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    decoration: const BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 5.0,
                                                          color:
                                                              Color(0xB4000000),
                                                          offset: Offset(
                                                            3.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (Navigator.of(
                                                                  context)
                                                              .canPop()) {
                                                            context.pop();
                                                          }
                                                          context.pushNamed(
                                                            'Ministracoes',
                                                            queryParameters: {
                                                              'topImg':
                                                                  serializeParam(
                                                                carouselTemaRow
                                                                    .top,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'youtube':
                                                                  serializeParam(
                                                                carouselTemaRow
                                                                    .youtube,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .leftToRight,
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    20.0),
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              carouselTemaRow
                                                                  .top,
                                                              'https://ministeriofiel.com.br/wp-content/uploads/2022/08/Pregando--660x330.png',
                                                            ),
                                                            width: 210.0,
                                                            height: 173.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                              carouselController: _model
                                                      .carouselController3 ??=
                                                  CarouselSliderController(),
                                              options: CarouselOptions(
                                                initialPage: max(
                                                    0,
                                                    min(
                                                        1,
                                                        carouselTemaRowList
                                                                .length -
                                                            1)),
                                                viewportFraction: 0.4,
                                                disableCenter: true,
                                                enlargeCenterPage: true,
                                                enlargeFactor: 0.35,
                                                enableInfiniteScroll: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                autoPlay: true,
                                                autoPlayAnimationDuration:
                                                    const Duration(
                                                        milliseconds: 1200),
                                                autoPlayInterval: const Duration(
                                                    milliseconds:
                                                        (1200 + 4000)),
                                                autoPlayCurve: Curves.linear,
                                                pauseAutoPlayInFiniteScroll:
                                                    true,
                                                onPageChanged: (index, _) =>
                                                    _model.carouselCurrentIndex3 =
                                                        index,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'DESTAQUES',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Montserrat'),
                                    ),
                              ),
                              FutureBuilder<List<UsuariosRow>>(
                                future: UsuariosTable().queryRows(
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
                                  List<UsuariosRow> containerUsuariosRowList =
                                      snapshot.data!;

                                  return Container(
                                    decoration: const BoxDecoration(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: 100.0,
                                  height: 365.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (_model.status == 'admin')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (SupabaseGroup.getUsuariosCall
                                                      .status(
                                                    (_model.outUser?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  'admin')
                                                FlutterFlowIconButton(
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 50.0,
                                                  icon: Icon(
                                                    Icons.upload_file,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30.0,
                                                  ),
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      useSafeArea: true,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                const UploadImagemWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      Expanded(
                                        child:
                                            FutureBuilder<List<DestaquesRow>>(
                                          future: DestaquesTable().queryRows(
                                            queryFn: (q) =>
                                                q.order('created_at'),
                                            limit: 3,
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
                                            List<DestaquesRow>
                                                pageViewDestaquesRowList =
                                                snapshot.data!;

                                            return SizedBox(
                                              width: double.infinity,
                                              height: 500.0,
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 40.0),
                                                    child: PageView.builder(
                                                      controller: _model
                                                              .pageViewController ??=
                                                          PageController(
                                                              initialPage: max(
                                                                  0,
                                                                  min(
                                                                      0,
                                                                      pageViewDestaquesRowList
                                                                              .length -
                                                                          1))),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          pageViewDestaquesRowList
                                                              .length,
                                                      itemBuilder: (context,
                                                          pageViewIndex) {
                                                        final pageViewDestaquesRow =
                                                            pageViewDestaquesRowList[
                                                                pageViewIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: SizedBox(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            child: Stack(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          8.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0xFD000000),
                                                                          offset:
                                                                              Offset(
                                                                            3.0,
                                                                            4.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              14.0),
                                                                    ),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        var shouldSetState =
                                                                            false;
                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: const Text('ATENÇÃO'),
                                                                                    content: const Text('Deseja excluir a foto?'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                        child: const Text('Não'),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                        child: const Text('Sim'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                        if (confirmDialogResponse) {
                                                                          _model.outdestaque =
                                                                              await DestaquesTable().delete(
                                                                            matchingRows: (rows) =>
                                                                                rows.eqOrNull(
                                                                              'id',
                                                                              pageViewDestaquesRow.id,
                                                                            ),
                                                                            returnRows:
                                                                                true,
                                                                          );
                                                                          shouldSetState =
                                                                              true;
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return WebViewAware(
                                                                                child: AlertDialog(
                                                                                  title: const Text('Cancelado'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: const Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                          if (shouldSetState) {
                                                                            safeSetState(() {});
                                                                          }
                                                                          return;
                                                                        }

                                                                        if (shouldSetState) {
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(14.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            pageViewDestaquesRow.imagem,
                                                                            'https://admin-blog.grupogen.com.br/app/uploads/sites/2/2022/12/culto.jpg',
                                                                          ),
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 1.0,
                                                                          height:
                                                                              260.0,
                                                                          fit: BoxFit
                                                                              .fill,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: smooth_page_indicator
                                                          .SmoothPageIndicator(
                                                        controller: _model
                                                                .pageViewController ??=
                                                            PageController(
                                                                initialPage: max(
                                                                    0,
                                                                    min(
                                                                        0,
                                                                        pageViewDestaquesRowList.length -
                                                                            1))),
                                                        count:
                                                            pageViewDestaquesRowList
                                                                .length,
                                                        axisDirection:
                                                            Axis.horizontal,
                                                        onDotClicked:
                                                            (i) async {
                                                          await _model
                                                              .pageViewController!
                                                              .animateToPage(
                                                            i,
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    500),
                                                            curve: Curves.ease,
                                                          );
                                                          safeSetState(() {});
                                                        },
                                                        effect: smooth_page_indicator
                                                            .ExpandingDotsEffect(
                                                          expansionFactor: 3.0,
                                                          spacing: 8.0,
                                                          radius: 16.0,
                                                          dotWidth: 16.0,
                                                          dotHeight: 8.0,
                                                          dotColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent1,
                                                          activeDotColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          paintStyle:
                                                              PaintingStyle
                                                                  .fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: Container(
                            width: 100.0,
                            height: 203.0,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Text(
                                            'VOLUNTÁRIOS',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  shadows: [
                                                    Shadow(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      offset: const Offset(2.0, 2.0),
                                                      blurRadius: 2.0,
                                                    )
                                                  ],
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Montserrat'),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            14.0, 8.0, 14.0, 0.0),
                                        child: Text(
                                          'Conheça os vontuários que nos ajudam e servem com amor em nossa igreja!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: const Color(0xFFC5CFD4),
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0xF8000000),
                                                  offset: Offset(
                                                    3.0,
                                                    4.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    'colaboradoresIgreja');
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                child: Image.asset(
                                                  'assets/images/voluntrios_2.png',
                                                  width: 375.0,
                                                  height: 90.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Text(
                                'PLAYLIST MONTE SANTO',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Montserrat'),
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    14.0, 0.0, 14.0, 0.0),
                                child: Text(
                                  'Clique abaixo para ouvir os louvores tocados em nossos culto!',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: const Color(0xFFC5CFD4),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 75.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('repertorioIgreja');
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width: 330.0,
                                    height: 309.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFBF6F6),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0xFF0D0101),
                                          offset: Offset(
                                            3.0,
                                            5.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 5.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x89000000),
                                                        offset: Offset(
                                                          4.0,
                                                          4.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 5.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/REPERTRIO_2.png',
                                                        width: 300.0,
                                                        height: 228.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 53.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFF160E54),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                                bottomRight:
                                                    Radius.circular(12.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.playlist_play_sharp,
                                                  color: Color(0xFFF4F4F4),
                                                  size: 28.0,
                                                ),
                                                Text(
                                                  'REPERTÓRIO',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            const Color(0xFFF4F4F4),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Montserrat'),
                                                      ),
                                                ),
                                              ].divide(const SizedBox(width: 6.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
