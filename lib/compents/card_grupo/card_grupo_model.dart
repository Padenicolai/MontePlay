import '/flutter_flow/flutter_flow_util.dart';
import 'card_grupo_widget.dart' show CardGrupoWidget;
import 'package:flutter/material.dart';

class CardGrupoModel extends FlutterFlowModel<CardGrupoWidget> {
  ///  Local state fields for this component.

  List<int> listaGrupo = [];
  void addToListaGrupo(int item) => listaGrupo.add(item);
  void removeFromListaGrupo(int item) => listaGrupo.remove(item);
  void removeAtIndexFromListaGrupo(int index) => listaGrupo.removeAt(index);
  void insertAtIndexInListaGrupo(int index, int item) =>
      listaGrupo.insert(index, item);
  void updateListaGrupoAtIndex(int index, Function(int) updateFn) =>
      listaGrupo[index] = updateFn(listaGrupo[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
