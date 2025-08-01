import '/flutter_flow/flutter_flow_util.dart';
import 'colaboradores_igreja_widget.dart' show ColaboradoresIgrejaWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ColaboradoresIgrejaModel
    extends FlutterFlowModel<ColaboradoresIgrejaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
