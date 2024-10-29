import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_funcoes_widget.dart' show CardFuncoesWidget;
import 'package:flutter/material.dart';

class CardFuncoesModel extends FlutterFlowModel<CardFuncoesWidget> {
  ///  Local state fields for this component.

  List<int> listFuncao = [];
  void addToListFuncao(int item) => listFuncao.add(item);
  void removeFromListFuncao(int item) => listFuncao.remove(item);
  void removeAtIndexFromListFuncao(int index) => listFuncao.removeAt(index);
  void insertAtIndexInListFuncao(int index, int item) =>
      listFuncao.insert(index, item);
  void updateListFuncaoAtIndex(int index, Function(int) updateFn) =>
      listFuncao[index] = updateFn(listFuncao[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getFuncaoGrupo)] action in cardFuncoes widget.
  ApiCallResponse? apiResult8pp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
