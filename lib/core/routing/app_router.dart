import 'package:go_router/go_router.dart';

import '../../ui/main_page.dart';
import 'routes.dart';

class AppRouter {
  AppRouter._();

  // GoRouter configuration
  static final GoRouter router = GoRouter(
    initialLocation: Routes.mainPage,
    routes: [
      GoRoute(
        path: Routes.mainPage,
        builder: (context, state) => const MainPage(),
      ),
    ],
  );
}
