import 'package:test_beauty_city/app_ex.dart';

class AppRouter {
  late GoRouter router = GoRouter(
    debugLogDiagnostics: false,
    initialLocation: Routes.homePage,
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      restorationId: state.pageKey.value,
      child: Container(), //! TODO => CustomErrorWidget(),
    ),
    routes: <GoRoute>[
      _route(
        name: Routes.homePage,
        path: Routes.homePage,
        pageBuilder: (state) => const HomePage(),
      ),
    ],
  );

  GoRoute _route({
    required String name,
    required String path,
    required Widget Function(GoRouterState state) pageBuilder,
    List<GoRoute> routes = const [],
  }) =>
      GoRoute(
        path: path,
        name: name,
        routes: routes,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: pageBuilder(state),
          key: state.pageKey,
          restorationId: state.pageKey.value,
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
}
