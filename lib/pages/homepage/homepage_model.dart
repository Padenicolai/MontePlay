import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/compents/perfil/perfil_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.

  String? status;

  String? live;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getUsuarios)] action in Homepage widget.
  ApiCallResponse? outUser;
  // Stores action output result for [Backend Call - API (apirepertorio)] action in Homepage widget.
  ApiCallResponse? apiResultLive;
  // Stores action output result for [Backend Call - API (getAdminTokens)] action in Homepage widget.
  ApiCallResponse? apiResult5we;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Image widget.
  List<DestaquesRow>? outdestaque;
  // Model for perfil component.
  late PerfilModel perfilModel;

  @override
  void initState(BuildContext context) {
    perfilModel = createModel(context, () => PerfilModel());
  }

  @override
  void dispose() {
    perfilModel.dispose();
  }
}
