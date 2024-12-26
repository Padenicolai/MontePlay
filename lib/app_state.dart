import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _userAccessToken =
          prefs.getString('ff_userAccessToken') ?? _userAccessToken;
    });
    _safeInit(() {
      _montesanto =
          latLngFromString(prefs.getString('ff_montesanto')) ?? _montesanto;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _apikey = 'AIzaSyDURtKTNagdEU3OLVGCGfjv_zfuLJRKlnE';
  String get apikey => _apikey;
  set apikey(String value) {
    _apikey = value;
  }

  String _salvacao = 'PLWta_utq-RWoTpgVZQb92lFI83Z6uq1YH';
  String get salvacao => _salvacao;
  set salvacao(String value) {
    _salvacao = value;
  }

  String _stateescalas = '';
  String get stateescalas => _stateescalas;
  set stateescalas(String value) {
    _stateescalas = value;
  }

  String _appStateRepertorio = 'PLtdccIRhpZngKLy2OnB2dbgkTe_y74oQ1';
  String get appStateRepertorio => _appStateRepertorio;
  set appStateRepertorio(String value) {
    _appStateRepertorio = value;
  }

  String _apikeyvagalume = 'ce3117e124854f4c8cef6c330eb43f0a';
  String get apikeyvagalume => _apikeyvagalume;
  set apikeyvagalume(String value) {
    _apikeyvagalume = value;
  }

  bool _admin = true;
  bool get admin => _admin;
  set admin(bool value) {
    _admin = value;
  }

  String _page1 =
      'EAEajgFQVDpDRElpRURBMFJUVXhNamcyUmtRek5VRTNRa1VvQVVqRmxLMjRxSU9GQTFBQVdrVWlRMmxLVVZSR1pEQlpWamt4WkVoRmRGVnNaSGRTUlRGSVZXcG9UbVJHVFhsa01FNU5VWHBPUTFKSVdtMU9SR2h5UldkM1NYRTJlbk55ZDFsUmFVNWZOSEpSU1NJ';
  String get page1 => _page1;
  set page1(String value) {
    _page1 = value;
  }

  String _page2 =
      'EAAajgFQVDpDRElpRURBMFJUVXhNamcyUmtRek5VRTNRa1VvQVVqRmxLMjRxSU9GQTFBQldrVWlRMmxLVVZSR1pEQlpWamt4WkVoRmRGVnNaSGRTUlRGSVZXcG9UbVJHVFhsa01FNU5VWHBPUTFKSVdtMU9SR2h5UldkM1NYRTJlbk55ZDFsUmFVNWZOSEpSU1NJ';
  String get page2 => _page2;
  set page2(String value) {
    _page2 = value;
  }

  String _page3 =
      'EAAajgFQVDpDR1FpRUVFM04wUkROalJFUkROQk1USTNSVGNvQVVqRmxLMjRxSU9GQTFBQldrVWlRMmxLVVZSR1pEQlpWamt4WkVoRmRGVnNaSGRTUlRGSVZXcG9UbVJHVFhsa01FNU5VWHBPUTFKSVdtMU9SR2h5UldkM1NYRTJlbk55ZDFsUmFVNWZOSEpSU1NJ';
  String get page3 => _page3;
  set page3(String value) {
    _page3 = value;
  }

  String _query = '';
  String get query => _query;
  set query(String value) {
    _query = value;
  }

  List<DtplaylistStruct> _repertorio = [];
  List<DtplaylistStruct> get repertorio => _repertorio;
  set repertorio(List<DtplaylistStruct> value) {
    _repertorio = value;
  }

  void addToRepertorio(DtplaylistStruct value) {
    repertorio.add(value);
  }

  void removeFromRepertorio(DtplaylistStruct value) {
    repertorio.remove(value);
  }

  void removeAtIndexFromRepertorio(int index) {
    repertorio.removeAt(index);
  }

  void updateRepertorioAtIndex(
    int index,
    DtplaylistStruct Function(DtplaylistStruct) updateFn,
  ) {
    repertorio[index] = updateFn(_repertorio[index]);
  }

  void insertAtIndexInRepertorio(int index, DtplaylistStruct value) {
    repertorio.insert(index, value);
  }

  String _page4 =
      'EAAajwFQVDpDSllCSWhBMU16SkZORVl4T0RFeU56QTBRVVV4S0FGSXhzaU1qYXJiaFFOUUFWcEZJa05wU2xGVVJtUXdXVlk1TVdSSVJYUlZiR1IzVWtVeFNGVnFhRTVrUmsxNVpEQk9UVkY2VGtOU1NGcHRUa1JvY2tWbmQwbHJkbUZyYzFGWlVUaFFjbFkzWjBraQ';
  String get page4 => _page4;
  set page4(String value) {
    _page4 = value;
  }

  bool _like = false;
  bool get like => _like;
  set like(bool value) {
    _like = value;
  }

  bool _esconder = false;
  bool get esconder => _esconder;
  set esconder(bool value) {
    _esconder = value;
  }

  List<String> _listaGrupoUsuario = [];
  List<String> get listaGrupoUsuario => _listaGrupoUsuario;
  set listaGrupoUsuario(List<String> value) {
    _listaGrupoUsuario = value;
  }

  void addToListaGrupoUsuario(String value) {
    listaGrupoUsuario.add(value);
  }

  void removeFromListaGrupoUsuario(String value) {
    listaGrupoUsuario.remove(value);
  }

  void removeAtIndexFromListaGrupoUsuario(int index) {
    listaGrupoUsuario.removeAt(index);
  }

  void updateListaGrupoUsuarioAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaGrupoUsuario[index] = updateFn(_listaGrupoUsuario[index]);
  }

  void insertAtIndexInListaGrupoUsuario(int index, String value) {
    listaGrupoUsuario.insert(index, value);
  }

  List<String> _listaFuncaoUsuario = [];
  List<String> get listaFuncaoUsuario => _listaFuncaoUsuario;
  set listaFuncaoUsuario(List<String> value) {
    _listaFuncaoUsuario = value;
  }

  void addToListaFuncaoUsuario(String value) {
    listaFuncaoUsuario.add(value);
  }

  void removeFromListaFuncaoUsuario(String value) {
    listaFuncaoUsuario.remove(value);
  }

  void removeAtIndexFromListaFuncaoUsuario(int index) {
    listaFuncaoUsuario.removeAt(index);
  }

  void updateListaFuncaoUsuarioAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaFuncaoUsuario[index] = updateFn(_listaFuncaoUsuario[index]);
  }

  void insertAtIndexInListaFuncaoUsuario(int index, String value) {
    listaFuncaoUsuario.insert(index, value);
  }

  List<int> _listaGrupoUsuario1 = [];
  List<int> get listaGrupoUsuario1 => _listaGrupoUsuario1;
  set listaGrupoUsuario1(List<int> value) {
    _listaGrupoUsuario1 = value;
  }

  void addToListaGrupoUsuario1(int value) {
    listaGrupoUsuario1.add(value);
  }

  void removeFromListaGrupoUsuario1(int value) {
    listaGrupoUsuario1.remove(value);
  }

  void removeAtIndexFromListaGrupoUsuario1(int index) {
    listaGrupoUsuario1.removeAt(index);
  }

  void updateListaGrupoUsuario1AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    listaGrupoUsuario1[index] = updateFn(_listaGrupoUsuario1[index]);
  }

  void insertAtIndexInListaGrupoUsuario1(int index, int value) {
    listaGrupoUsuario1.insert(index, value);
  }

  List<String> _membrosChat = [];
  List<String> get membrosChat => _membrosChat;
  set membrosChat(List<String> value) {
    _membrosChat = value;
  }

  void addToMembrosChat(String value) {
    membrosChat.add(value);
  }

  void removeFromMembrosChat(String value) {
    membrosChat.remove(value);
  }

  void removeAtIndexFromMembrosChat(int index) {
    membrosChat.removeAt(index);
  }

  void updateMembrosChatAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    membrosChat[index] = updateFn(_membrosChat[index]);
  }

  void insertAtIndexInMembrosChat(int index, String value) {
    membrosChat.insert(index, value);
  }

  List<String> _escala = [];
  List<String> get escala => _escala;
  set escala(List<String> value) {
    _escala = value;
  }

  void addToEscala(String value) {
    escala.add(value);
  }

  void removeFromEscala(String value) {
    escala.remove(value);
  }

  void removeAtIndexFromEscala(int index) {
    escala.removeAt(index);
  }

  void updateEscalaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    escala[index] = updateFn(_escala[index]);
  }

  void insertAtIndexInEscala(int index, String value) {
    escala.insert(index, value);
  }

  List<int> _listaFuncaoUsuario1 = [];
  List<int> get listaFuncaoUsuario1 => _listaFuncaoUsuario1;
  set listaFuncaoUsuario1(List<int> value) {
    _listaFuncaoUsuario1 = value;
  }

  void addToListaFuncaoUsuario1(int value) {
    listaFuncaoUsuario1.add(value);
  }

  void removeFromListaFuncaoUsuario1(int value) {
    listaFuncaoUsuario1.remove(value);
  }

  void removeAtIndexFromListaFuncaoUsuario1(int index) {
    listaFuncaoUsuario1.removeAt(index);
  }

  void updateListaFuncaoUsuario1AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    listaFuncaoUsuario1[index] = updateFn(_listaFuncaoUsuario1[index]);
  }

  void insertAtIndexInListaFuncaoUsuario1(int index, int value) {
    listaFuncaoUsuario1.insert(index, value);
  }

  List<int> _listaUsuariosBloqueados = [];
  List<int> get listaUsuariosBloqueados => _listaUsuariosBloqueados;
  set listaUsuariosBloqueados(List<int> value) {
    _listaUsuariosBloqueados = value;
  }

  void addToListaUsuariosBloqueados(int value) {
    listaUsuariosBloqueados.add(value);
  }

  void removeFromListaUsuariosBloqueados(int value) {
    listaUsuariosBloqueados.remove(value);
  }

  void removeAtIndexFromListaUsuariosBloqueados(int index) {
    listaUsuariosBloqueados.removeAt(index);
  }

  void updateListaUsuariosBloqueadosAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    listaUsuariosBloqueados[index] = updateFn(_listaUsuariosBloqueados[index]);
  }

  void insertAtIndexInListaUsuariosBloqueados(int index, int value) {
    listaUsuariosBloqueados.insert(index, value);
  }

  String _token = 'nulo';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  List<dynamic> _bloqueios = [];
  List<dynamic> get bloqueios => _bloqueios;
  set bloqueios(List<dynamic> value) {
    _bloqueios = value;
  }

  void addToBloqueios(dynamic value) {
    bloqueios.add(value);
  }

  void removeFromBloqueios(dynamic value) {
    bloqueios.remove(value);
  }

  void removeAtIndexFromBloqueios(int index) {
    bloqueios.removeAt(index);
  }

  void updateBloqueiosAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    bloqueios[index] = updateFn(_bloqueios[index]);
  }

  void insertAtIndexInBloqueios(int index, dynamic value) {
    bloqueios.insert(index, value);
  }

  String _userAccessToken = '';
  String get userAccessToken => _userAccessToken;
  set userAccessToken(String value) {
    _userAccessToken = value;
    prefs.setString('ff_userAccessToken', value);
  }

  String _tokenYoutube = '';
  String get tokenYoutube => _tokenYoutube;
  set tokenYoutube(String value) {
    _tokenYoutube = value;
  }

  dynamic _liveVideo;
  dynamic get liveVideo => _liveVideo;
  set liveVideo(dynamic value) {
    _liveVideo = value;
  }

  String _apiLive = 'PLtdccIRhpZniDLVlqQsbeCKTmvbZ8H8WQ';
  String get apiLive => _apiLive;
  set apiLive(String value) {
    _apiLive = value;
  }

  String _liveVideoId = '';
  String get liveVideoId => _liveVideoId;
  set liveVideoId(String value) {
    _liveVideoId = value;
  }

  String _fcmToken = '';
  String get fcmToken => _fcmToken;
  set fcmToken(String value) {
    _fcmToken = value;
  }

  String _tokenBiblia =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdHIiOiJUdWUgU2VwIDE3IDIwMjQgMTY6MDI6MTkgR01UKzAwMDAuZXBkZW5pY29sYWlAZ21haWwuY29tIiwiaWF0IjoxNzI2NTg4OTM5fQ.zuF_sfHwqtFNJa_l_aJ5p2fsbTDkj4ea_iDhvsNdJRQ';
  String get tokenBiblia => _tokenBiblia;
  set tokenBiblia(String value) {
    _tokenBiblia = value;
  }

  bool _openPlaylist = true;
  bool get openPlaylist => _openPlaylist;
  set openPlaylist(bool value) {
    _openPlaylist = value;
  }

  bool _openSocialMedia = false;
  bool get openSocialMedia => _openSocialMedia;
  set openSocialMedia(bool value) {
    _openSocialMedia = value;
  }

  LatLng? _montesanto = const LatLng(-22.4593366, -48.9919728);
  LatLng? get montesanto => _montesanto;
  set montesanto(LatLng? value) {
    _montesanto = value;
    value != null
        ? prefs.setString('ff_montesanto', value.serialize())
        : prefs.remove('ff_montesanto');
  }

  String _usuarioBloqueado = '';
  String get usuarioBloqueado => _usuarioBloqueado;
  set usuarioBloqueado(String value) {
    _usuarioBloqueado = value;
  }

  List<String> _fcmTokenAdmins = [];
  List<String> get fcmTokenAdmins => _fcmTokenAdmins;
  set fcmTokenAdmins(List<String> value) {
    _fcmTokenAdmins = value;
  }

  void addToFcmTokenAdmins(String value) {
    fcmTokenAdmins.add(value);
  }

  void removeFromFcmTokenAdmins(String value) {
    fcmTokenAdmins.remove(value);
  }

  void removeAtIndexFromFcmTokenAdmins(int index) {
    fcmTokenAdmins.removeAt(index);
  }

  void updateFcmTokenAdminsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    fcmTokenAdmins[index] = updateFn(_fcmTokenAdmins[index]);
  }

  void insertAtIndexInFcmTokenAdmins(int index, String value) {
    fcmTokenAdmins.insert(index, value);
  }

  String _fcmTokenAdminLouvor =
      'c1vJBNmgRwuyx2_4Gja7F3:APA91bG2pKgttSg3UP51NoHBP9JRs35FFlqVyqJamrW9FYzN1i9ADZZyA6_oHUDbFmQQyAu1RO8MEjaHMbwq-JKsYnWQU_nETtEIbkRLHwZN9Rpfaqe4K2pK4Y24QOgmr1d91xg4vPaf';
  String get fcmTokenAdminLouvor => _fcmTokenAdminLouvor;
  set fcmTokenAdminLouvor(String value) {
    _fcmTokenAdminLouvor = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
