import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'player_widget.dart' show PlayerWidget;
import 'package:flutter/material.dart';

class PlayerModel extends FlutterFlowModel<PlayerWidget> {
  ///  Local state fields for this page.

  String page = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
