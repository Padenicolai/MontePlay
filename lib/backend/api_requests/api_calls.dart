import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Pastores Group Code

class PastoresGroup {
  static String getBaseUrl() => 'https://youtube.googleapis.com/youtube/v3';
  static Map<String, String> headers = {};
  static AllPastoresCall allPastoresCall = AllPastoresCall();
  static PostCommentYoutubeCall postCommentYoutubeCall =
      PostCommentYoutubeCall();
  static VideoPlaylistsCall videoPlaylistsCall = VideoPlaylistsCall();
  static VideoPlaylistsCopyCall videoPlaylistsCopyCall =
      VideoPlaylistsCopyCall();
  static VideosIdCall videosIdCall = VideosIdCall();
  static SearchCall searchCall = SearchCall();
  static ApirepertorioCall apirepertorioCall = ApirepertorioCall();
  static LiveYoutubeCall liveYoutubeCall = LiveYoutubeCall();
  static ApiPregacoesCall apiPregacoesCall = ApiPregacoesCall();
}

class AllPastoresCall {
  Future<ApiCallResponse> call({
    String? videoId = '',
    String? yourApiKey = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'allPastores',
      apiUrl:
          '$baseUrl/commentThreads?part=snippet%2Creplies&maxResults=200&videoId=$videoId&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? item(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  String? comentrio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].snippet.topLevelComment.snippet.textDisplay''',
      ));
  String? usuario(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].snippet.topLevelComment.snippet.authorDisplayName''',
      ));
  String? imagemUsuario(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].snippet.topLevelComment.snippet.authorProfileImageUrl''',
      ));
}

class PostCommentYoutubeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
    String? yourApiKey = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'postCommentYoutube',
      apiUrl:
          '$baseUrl/playlistItems?part=snippet%2CcontentDetails&maxResults=200&pageToken=$token&playlistId=$id&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Foto''',
      ));
  String? bio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Bio''',
      ));
  String? youtube(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.idYoutube''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Nome''',
      ));
  String? minifoto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Minifoto''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.objectId''',
      ));
  String? proximapagina(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextPageToken''',
      ));
  String? paginaanterior(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.prevPageToken''',
      ));
}

class VideoPlaylistsCall {
  Future<ApiCallResponse> call({
    String? yourApiKey = '',
    String? id = '',
    String? token =
        'EAEajgFQVDpDRElpRURJeFJESkJORE15TkVNM016SkJNeklvQVVpRW9Mclk2SUdKQTFBQVdrVWlRMmxLVVZSR1pEQlpWamt4WkVoRmRGVnNaSGRTUlRGSVZXcG9UbVJHVFhsa01FNU5VWHBPUTFKSVdtMU9SR2h5UldkM1NXeG1iV0YxUVZsUmIxQjJUSFYzUlNJ',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'VideoPlaylists',
      apiUrl:
          '$baseUrl/playlistItems?part=snippet%2CcontentDetails&maxResults=50&pageToken=$token&playlistId=$id&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nextPage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextPageToken''',
      ));
  String? prevpage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.prevPageToken''',
      ));
  List? id(dynamic response) => getJsonField(
        response,
        r'''$.items[:].snippet.resourceId''',
        true,
      ) as List?;
  List<String>? thumb(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.medium.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  List<int>? posicao(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.position''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class VideoPlaylistsCopyCall {
  Future<ApiCallResponse> call({
    String? yourApiKey = '',
    String? id = 'PLtdccIRhpZngKLy2OnB2dbgkTe_y74oQ1',
    String? token = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'VideoPlaylists Copy',
      apiUrl:
          '$baseUrl/playlistItems?part=snippet%2CcontentDetails&maxResults=50&pageToken=$token&playlistId=$id&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? thumbnail(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.medium.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cantor(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.videoOwnerChannelTitle''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? videoid(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.resourceId.videoId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VideosIdCall {
  Future<ApiCallResponse> call({
    String? yourApiKey = '',
    String? videoID = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'VideosId',
      apiUrl:
          '$baseUrl/videos?part=snippet%2CcontentDetails%2Cstatistics&id=$videoID&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? thumbhigh(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.high.url''',
      ));
  String? thumbmid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.standard.url''',
      ));
  String? thumbmax(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.maxres.url''',
      ));
}

class SearchCall {
  Future<ApiCallResponse> call({
    String? yourApiKey = '',
    String? token = '',
    String? id = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'search',
      apiUrl:
          '$baseUrl/playlistItems?part=snippet&maxResults=500&pageToken=$token&playlistId=$id&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nextPageToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextPageToken''',
      ));
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? img(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.high.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? resource(dynamic response) => getJsonField(
        response,
        r'''$.items[:].snippet.resourceId''',
        true,
      ) as List?;
  List<String>? videoId(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.resourceId.videoId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? prevToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.prevPageToken''',
      ));
  int? totalresults(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pageInfo.totalResults''',
      ));
  List<int>? posicao(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.position''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  dynamic pageinfo(dynamic response) => getJsonField(
        response,
        r'''$.pageInfo''',
      );
}

class ApirepertorioCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? yourApiKey = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'apirepertorio',
      apiUrl:
          '$baseUrl/playlistItems?part=snippet%2CcontentDetails&maxResults=200&playlistId=$id&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? thumb(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.thumbnails.medium.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? videoid(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].snippet.resourceId.videoId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LiveYoutubeCall {
  Future<ApiCallResponse> call({
    String? yourApiKey = '',
    String? yourAccessToken = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'liveYoutube',
      apiUrl:
          '$baseUrl/liveBroadcasts?part=snippet&broadcastStatus=active&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $yourAccessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPregacoesCall {
  Future<ApiCallResponse> call({
    String? yourApiKey = 'AIzaSyDURtKTNagdEU3OLVGCGfjv_zfuLJRKlnE',
    String? id = 'PLWta_utq-RWpDMGR8MtS2wCLC3BDvf48k',
    String? token = '',
  }) async {
    final baseUrl = PastoresGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'apiPregacoes',
      apiUrl:
          '$baseUrl/playlistItems?part=snippet&id=$id&maxResults=50&pageToken=$token&key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Pastores Group Code

/// Start Supabase Group Code

class SupabaseGroup {
  static String getBaseUrl() =>
      'https://srntolisgqxsfybdnmxz.supabase.co/rest/v1';
  static Map<String, String> headers = {};
  static GetRepertorioCall getRepertorioCall = GetRepertorioCall();
  static GetUsuariosCall getUsuariosCall = GetUsuariosCall();
  static GetUsuariosCopyCall getUsuariosCopyCall = GetUsuariosCopyCall();
  static GetUsuariosFiltroCall getUsuariosFiltroCall = GetUsuariosFiltroCall();
  static GetUsuariosAddMemberCall getUsuariosAddMemberCall =
      GetUsuariosAddMemberCall();
  static GetBloqueiosCall getBloqueiosCall = GetBloqueiosCall();
  static GetUserGrupoCall getUserGrupoCall = GetUserGrupoCall();
  static GetFuncaoGrupoCall getFuncaoGrupoCall = GetFuncaoGrupoCall();
  static SearchUserCall searchUserCall = SearchUserCall();
  static AddMemebersCall addMemebersCall = AddMemebersCall();
  static GetEscalaCall getEscalaCall = GetEscalaCall();
  static GetCadastroGrupoCall getCadastroGrupoCall = GetCadastroGrupoCall();
  static GetFuncoesCall getFuncoesCall = GetFuncoesCall();
  static GetCultoCall getCultoCall = GetCultoCall();
  static GetAdminTokensCall getAdminTokensCall = GetAdminTokensCall();
}

class GetRepertorioCall {
  Future<ApiCallResponse> call({
    int? varlimit,
    int? varoffset,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRepertorio',
      apiUrl: '$baseUrl/repertorio?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {
        'limit': varlimit,
        'offset': varoffset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? videoId(dynamic response) => (getJsonField(
        response,
        r'''$[:].videoid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cantor(dynamic response) => (getJsonField(
        response,
        r'''$[:].cantor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? thumbnail(dynamic response) => (getJsonField(
        response,
        r'''$[:].thumbnails''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idVideo(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetUsuariosCall {
  Future<ApiCallResponse> call({
    String? userId = 'eq.9e83efb5-dfa9-4bbd-87d8-b871817a9e99',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUsuarios',
      apiUrl: '$baseUrl/usuarios',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? usuarioId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarios_id''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomeUsuario''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fcmtoken''',
      ));
}

class GetUsuariosCopyCall {
  Future<ApiCallResponse> call({
    String? userId = 'eq.9e83efb5-dfa9-4bbd-87d8-b871817a9e99',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUsuarios Copy',
      apiUrl: '$baseUrl/usuarios',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? usuarioId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarios_id''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomeUsuario''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fcmtoken''',
      ));
}

class GetUsuariosFiltroCall {
  Future<ApiCallResponse> call({
    String? searchString = '',
    String? userId = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUsuariosFiltro',
      apiUrl:
          '$baseUrl/usuarios?nomeUsuario=ilike.*$searchString*&user_id=not.eq.$userId',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? usuarioId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarios_id''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomeUsuario''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fcmtoken''',
      ));
}

class GetUsuariosAddMemberCall {
  Future<ApiCallResponse> call({
    String? searchString = '',
    String? currentMembersUid = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUsuariosAddMember',
      apiUrl:
          '$baseUrl/usuarios?nomeUsuario=ilike.*$searchString*&user_id=not.in.($currentMembersUid)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? usuarioId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarios_id''',
      ));
  String? userId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomeUsuario''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].fcmtoken''',
      ));
}

class GetBloqueiosCall {
  Future<ApiCallResponse> call({
    String? idCulto = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getBloqueios',
      apiUrl: '$baseUrl/v_bloqueios?culto_id=$idCulto&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data''',
      ));
  String? user(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].userid''',
      ));
  List<int>? idCulto(dynamic response) => (getJsonField(
        response,
        r'''$[:].culto_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idUsuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].usuario_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetUserGrupoCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserGrupo',
      apiUrl: '$baseUrl/view_usergrupo?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeUsuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? usuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].usuarios_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? grupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeGrupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].idgrupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetFuncaoGrupoCall {
  Future<ApiCallResponse> call({
    int? idUser,
    int? idGrupo,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getFuncaoGrupo',
      apiUrl: '$baseUrl/view_usuario_funcao_ministerio?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {
        'idUser': idUser,
        'idGrupo': idGrupo,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idUsuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].idusuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ministerio(dynamic response) => (getJsonField(
        response,
        r'''$[:].ministerio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? icone(dynamic response) => (getJsonField(
        response,
        r'''$[:].icone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idMinisterio(dynamic response) => (getJsonField(
        response,
        r'''$[:].idministerio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idGrupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class SearchUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'searchUser',
      apiUrl: '$baseUrl/usuarios?user_id=not.eq.$userId&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarios_id''',
      ));
  String? create(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomeUsuario''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  List<String>? fcmtoken(dynamic response) => (getJsonField(
        response,
        r'''$[:].fcm_token''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddMemebersCall {
  Future<ApiCallResponse> call({
    String? searchString = '',
    String? currentMembers = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'addMemebers',
      apiUrl:
          '$baseUrl/usuarios?nomeUsuario=ilike.*$searchString*&user_id=not.eq.($currentMembers)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].usuarios_id''',
      ));
  String? create(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nomeUsuario''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto''',
      ));
  bool? admin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].isAdmin''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
}

class GetEscalaCall {
  Future<ApiCallResponse> call({
    String? cultoid = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getEscala',
      apiUrl: '$baseUrl/view_escala?culto_id=eq.$cultoid&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCadastroGrupoCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCadastroGrupo',
      apiUrl: '$baseUrl/cadastroGrupo?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idUsuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_usuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idGrupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetFuncoesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getFuncoes',
      apiUrl: '$baseUrl/funcoes?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idUsuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_usuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? idGrupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].id_grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetCultoCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCulto',
      apiUrl: '$baseUrl/culto?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? data(dynamic response) => (getJsonField(
        response,
        r'''$[:].data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeCulto(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeCulto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAdminTokensCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAdminTokens',
      apiUrl: '$baseUrl/view_usuariosadmin?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? fcmtoken(dynamic response) => getJsonField(
        response,
        r'''$[:].fcm_token''',
        true,
      ) as List?;
  List<int>? idusuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].idusuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nomeusuario(dynamic response) => (getJsonField(
        response,
        r'''$[:].nomeUsuario''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? usuariosid(dynamic response) => (getJsonField(
        response,
        r'''$[:].usuarios_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? userid(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Supabase Group Code

/// Start Supabase Auth Group Code

class SupabaseAuthGroup {
  static String getBaseUrl() =>
      'https://srntolisgqxsfybdnmxz.supabase.co/auth/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
  };
  static TrocarSenhaCall trocarSenhaCall = TrocarSenhaCall();
  static MagicLinkCall magicLinkCall = MagicLinkCall();
}

class TrocarSenhaCall {
  Future<ApiCallResponse> call({
    String? userToken = '',
    String? eMail = '',
    String? senha = '',
  }) async {
    final baseUrl = SupabaseAuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "e-mail": "$eMail",
  "password": "$senha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'trocarSenha',
      apiUrl: '$baseUrl/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
        'Authorization': 'Bearer $userToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MagicLinkCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SupabaseAuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'magicLink',
      apiUrl: '$baseUrl/magiclink',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Supabase Auth Group Code

/// Start Spotify Group Code

class SpotifyGroup {
  static String getBaseUrl() => 'https://api.spotify.com/v1';
  static Map<String, String> headers = {};
  static AlbunsCall albunsCall = AlbunsCall();
  static VariosAlbunsCall variosAlbunsCall = VariosAlbunsCall();
  static PlaylistCall playlistCall = PlaylistCall();
  static PlaylistTracksCall playlistTracksCall = PlaylistTracksCall();
  static PlaylistCoverImageCall playlistCoverImageCall =
      PlaylistCoverImageCall();
  static TrackCall trackCall = TrackCall();
}

class AlbunsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotifyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'albuns',
      apiUrl: '$baseUrl/albums/{id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VariosAlbunsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotifyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'variosAlbuns',
      apiUrl: '$baseUrl/albums',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlaylistCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotifyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'playlist',
      apiUrl: '$baseUrl/playlists/{playlist_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlaylistTracksCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotifyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'playlistTracks',
      apiUrl: '$baseUrl/playlists/{playlist_id}/tracks',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PlaylistCoverImageCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotifyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'playlistCoverImage',
      apiUrl: '$baseUrl/playlists/{playlist_id}/images',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TrackCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SpotifyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'track',
      apiUrl: '$baseUrl/tracks/{id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Spotify Group Code

/// Start Biblia Group Code

class BibliaGroup {
  static String getBaseUrl() => 'https://www.abibliadigital.com.br/api';
  static Map<String, String> headers = {};
  static BooksCall booksCall = BooksCall();
}

class BooksCall {
  Future<ApiCallResponse> call({
    String? tokenBiblia = '',
    String? testament = '',
  }) async {
    final baseUrl = BibliaGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'books',
      apiUrl: '$baseUrl/books',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $tokenBiblia',
      },
      params: {
        'testament': testament,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? capitulos(dynamic response) => (getJsonField(
        response,
        r'''$[:].chapters''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Biblia Group Code

/// Start webhookk Group Code

class WebhookkGroup {
  static String getBaseUrl() =>
      'https://primary-production-dc7f.up.railway.app/';
  static Map<String, String> headers = {};
}

/// End webhookk Group Code

class RepertorioCall {
  static Future<ApiCallResponse> call({
    int? varlimit,
    int? varoffset,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'repertorio',
      apiUrl:
          'https://srntolisgqxsfybdnmxz.supabase.co/rest/v1/repertorio?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {
        'limit': varlimit,
        'offset': varoffset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? videoid(dynamic response) => (getJsonField(
        response,
        r'''$[:].videoid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cantor(dynamic response) => (getJsonField(
        response,
        r'''$[:].cantor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? thumbnails(dynamic response) => (getJsonField(
        response,
        r'''$[:].thumbnails''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuscarUserCall {
  static Future<ApiCallResponse> call({
    String? userId = 'eq.9e83efb5-dfa9-4bbd-87d8-b871817a9e99',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscarUser',
      apiUrl: 'https://srntolisgqxsfybdnmxz.supabase.co/rest/v1/usuarios',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNybnRvbGlzZ3F4c2Z5YmRubXh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAwMzk3NjgsImV4cCI6MjAyNTYxNTc2OH0.-TLdrG5wwvk4cVScu4ALUI6sDf6uX1EqC-wAxTxB1RM',
      },
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
}

class PushAllCall {
  static Future<ApiCallResponse> call({
    String? titulo = 'teste',
    String? mensagem = 'teste',
  }) async {
    final ffApiRequestBody = '''
{
  "title": "$titulo",
  "body": "$mensagem"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pushAll',
      apiUrl:
          'https://primary-production-dc7f.up.railway.app/webhook/8b9de0e0-66b3-4551-9e9f-fd63bd8cb622',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PushSingleCall {
  static Future<ApiCallResponse> call({
    String? titulo = '',
    String? mensagem = '',
    String? fcmtoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "token": "$fcmtoken",
  "title": "$titulo",
  "body": "$mensagem"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pushSingle',
      apiUrl:
          'https://primary-production-dc7f.up.railway.app/webhook/394ac0a7-3118-4815-8a8a-ae299eba477b',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PushInternoCall {
  static Future<ApiCallResponse> call({
    String? titulo = '',
    String? mensagem = '',
    List<String>? fcmtokenList,
  }) async {
    final fcmtoken = _serializeList(fcmtokenList);

    final ffApiRequestBody = '''
{
  "token": "[$fcmtoken]",
  "title": "$titulo",
  "body": "$mensagem"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pushInterno',
      apiUrl:
          'https://primary-production-dc7f.up.railway.app/webhook-test/ce0dd773-4fa2-434e-b43a-871cc589be4c',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
