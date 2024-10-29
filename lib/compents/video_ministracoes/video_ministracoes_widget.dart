import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'video_ministracoes_model.dart';
export 'video_ministracoes_model.dart';

class VideoMinistracoesWidget extends StatefulWidget {
  const VideoMinistracoesWidget({
    super.key,
    required this.videoId,
  });

  final String? videoId;

  @override
  State<VideoMinistracoesWidget> createState() =>
      _VideoMinistracoesWidgetState();
}

class _VideoMinistracoesWidgetState extends State<VideoMinistracoesWidget> {
  late VideoMinistracoesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoMinistracoesModel());

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

    return FutureBuilder<List<ContagemLikesRow>>(
      future: ContagemLikesTable().querySingleRow(
        queryFn: (q) => q.eq(
          'videoId',
          widget.videoId,
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
        List<ContagemLikesRow> containerContagemLikesRowList = snapshot.data!;

        final containerContagemLikesRow =
            containerContagemLikesRowList.isNotEmpty
                ? containerContagemLikesRowList.first
                : null;

        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            color: Color(0x3F000000),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Row(
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
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: FlutterFlowYoutubePlayer(
                  url: 'https://www.youtube.com/watch?v=${widget.videoId}',
                  autoPlay: false,
                  looping: true,
                  mute: false,
                  showControls: true,
                  showFullScreen: true,
                  strictRelatedVideos: false,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Share.share(
                            'https://www.youtube.com/watch?v=${widget.videoId}',
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        },
                        child: Icon(
                          Icons.share,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 35.0,
                        ),
                      ),
                    ),
                    badges.Badge(
                      badgeContent: Text(
                        valueOrDefault<String>(
                          containerContagemLikesRow?.count?.toString(),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).alternate,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                      ),
                      showBadge: true,
                      shape: badges.BadgeShape.circle,
                      badgeColor: FlutterFlowTheme.of(context).primaryText,
                      elevation: 4.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                      position: badges.BadgePosition.topEnd(),
                      animationType: badges.BadgeAnimationType.scale,
                      toAnimate: true,
                      child: ToggleIcon(
                        onPressed: () async {
                          safeSetState(
                              () => FFAppState().like = !FFAppState().like);
                          await LikesTable().insert({
                            'videoId': widget.videoId,
                          });
                        },
                        value: FFAppState().like,
                        onIcon: const Icon(
                          Icons.favorite,
                          color: Color(0xFF9C060C),
                          size: 35.0,
                        ),
                        offIcon: Icon(
                          Icons.favorite_border,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 35.0,
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 20.0)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
