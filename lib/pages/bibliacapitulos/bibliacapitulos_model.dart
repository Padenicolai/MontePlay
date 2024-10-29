import '/flutter_flow/flutter_flow_util.dart';
import 'bibliacapitulos_widget.dart' show BibliacapitulosWidget;
import 'package:flutter/material.dart';

class BibliacapitulosModel extends FlutterFlowModel<BibliacapitulosWidget> {
  ///  Local state fields for this page.

  List<int> listaCapitulo = [];
  void addToListaCapitulo(int item) => listaCapitulo.add(item);
  void removeFromListaCapitulo(int item) => listaCapitulo.remove(item);
  void removeAtIndexFromListaCapitulo(int index) =>
      listaCapitulo.removeAt(index);
  void insertAtIndexInListaCapitulo(int index, int item) =>
      listaCapitulo.insert(index, item);
  void updateListaCapituloAtIndex(int index, Function(int) updateFn) =>
      listaCapitulo[index] = updateFn(listaCapitulo[index]);

  int? capituloAtual = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;

  @override
  void initState(BuildContext context) {
    listViewController1 = ScrollController();
    columnController = ScrollController();
    listViewController2 = ScrollController();
  }

  @override
  void dispose() {
    listViewController1?.dispose();
    columnController?.dispose();
    listViewController2?.dispose();
  }
}
