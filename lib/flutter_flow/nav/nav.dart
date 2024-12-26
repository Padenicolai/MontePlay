import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const InicialWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const InicialWidget(),
        ),
        FFRoute(
          name: 'Homepage',
          path: '/homepage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Homepage')
              : const HomepageWidget(),
        ),
        FFRoute(
          name: 'Inicial',
          path: '/inicial',
          builder: (context, params) => const InicialWidget(),
        ),
        FFRoute(
          name: 'EsqueceuaSenha',
          path: '/esqueceuaSenha',
          builder: (context, params) => const EsqueceuaSenhaWidget(),
        ),
        FFRoute(
          name: 'Pastores',
          path: '/pastores',
          builder: (context, params) => PastoresWidget(
            nome: params.getParam(
              'nome',
              ParamType.String,
            ),
            bio: params.getParam(
              'bio',
              ParamType.String,
            ),
            topImg: params.getParam(
              'topImg',
              ParamType.String,
            ),
            youtube: params.getParam(
              'youtube',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'homeMinisterios',
          path: '/homeMinisterios',
          requireAuth: true,
          builder: (context, params) => const HomeMinisteriosWidget(),
        ),
        FFRoute(
          name: 'criarEscala',
          path: '/criarEscala',
          builder: (context, params) => CriarEscalaWidget(
            idCulto: params.getParam(
              'idCulto',
              ParamType.int,
            ),
            data: params.getParam(
              'data',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'colaboradoresIgreja',
          path: '/membrosIgreja',
          builder: (context, params) => const ColaboradoresIgrejaWidget(),
        ),
        FFRoute(
          name: 'biblia',
          path: '/biblia',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'biblia')
              : const BibliaWidget(),
        ),
        FFRoute(
          name: 'bibliacapitulos',
          path: '/bibliacapitulos',
          builder: (context, params) => BibliacapitulosWidget(
            nCapitulos: params.getParam(
              'nCapitulos',
              ParamType.int,
            ),
            livro: params.getParam(
              'livro',
              ParamType.String,
            ),
            idLivro: params.getParam(
              'idLivro',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'repertorioIgreja',
          path: '/escalaCultocopia',
          builder: (context, params) => const RepertorioIgrejaWidget(),
        ),
        FFRoute(
          name: 'cultos',
          path: '/cultos',
          builder: (context, params) => const CultosWidget(),
        ),
        FFRoute(
          name: 'homeChat',
          path: '/homeChat',
          builder: (context, params) => const HomeChatWidget(),
        ),
        FFRoute(
          name: 'chatPage',
          path: '/chatPage',
          builder: (context, params) => ChatPageWidget(
            groupimg: params.getParam(
              'groupimg',
              ParamType.String,
            ),
            groupName: params.getParam(
              'groupName',
              ParamType.String,
            ),
            chatId: params.getParam(
              'chatId',
              ParamType.int,
            ),
            chatMembers: params.getParam<String>(
              'chatMembers',
              ParamType.String,
              isList: true,
            ),
            isChatGroup: params.getParam(
              'isChatGroup',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'contactDetail',
          path: '/contactDetail',
          builder: (context, params) => ContactDetailWidget(
            nome: params.getParam(
              'nome',
              ParamType.String,
            ),
            img: params.getParam(
              'img',
              ParamType.String,
            ),
            chatId: params.getParam(
              'chatId',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'groupDetail',
          path: '/groupDetail',
          builder: (context, params) => GroupDetailWidget(
            nome: params.getParam(
              'nome',
              ParamType.String,
            ),
            img: params.getParam(
              'img',
              ParamType.String,
            ),
            chatId: params.getParam(
              'chatId',
              ParamType.int,
            ),
            chatMembers: params.getParam<String>(
              'chatMembers',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'escala',
          path: '/escala',
          builder: (context, params) => EscalaWidget(
            idCulto: params.getParam(
              'idCulto',
              ParamType.int,
            ),
            data: params.getParam(
              'data',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'repertorioMinisterios',
          path: '/escalaCultocopia1',
          builder: (context, params) => const RepertorioMinisteriosWidget(),
        ),
        FFRoute(
          name: 'membrosHome',
          path: '/membrosHome',
          builder: (context, params) => MembrosHomeWidget(
            grupo: params.getParam(
              'grupo',
              ParamType.int,
            ),
            nomeMinisterio: params.getParam(
              'nomeMinisterio',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Player',
          path: '/player',
          builder: (context, params) => PlayerWidget(
            videoId: params.getParam(
              'videoId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Ministracoes',
          path: '/ministracoes',
          builder: (context, params) => MinistracoesWidget(
            topImg: params.getParam(
              'topImg',
              ParamType.String,
            ),
            youtube: params.getParam(
              'youtube',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'membrosHomeCopy',
          path: '/membrosHomeCopy',
          builder: (context, params) => MembrosHomeCopyWidget(
            grupo: params.getParam(
              'grupo',
              ParamType.int,
            ),
            nomeMinisterio: params.getParam(
              'nomeMinisterio',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'cultosGeral',
          path: '/cultosGeral',
          builder: (context, params) => const CultosGeralWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/inicial';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/lv_0_20240813172318.gif',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
