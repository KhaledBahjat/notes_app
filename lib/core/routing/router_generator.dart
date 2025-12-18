import 'package:go_router/go_router.dart';
import 'package:nots_app/core/routing/app_routs.dart';
import 'package:nots_app/screens/auth/login_screen.dart';
import 'package:nots_app/screens/auth/register_screen.dart';
import 'package:nots_app/screens/home_screen.dart';

class RouterGenerator {
  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: AppRouts.login,
        name: AppRouts.login,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRouts.register,
        name: AppRouts.register,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: AppRouts.home,
        name: AppRouts.home,
        builder: (context, state) => HomeScreen(),
      ),
    ],
    initialLocation: AppRouts.login,
  );
}
