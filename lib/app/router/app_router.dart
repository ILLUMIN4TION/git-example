import 'package:daelim_2025/app/router/app_route.dart';
import 'package:daelim_2025/presentation/main/mian_screen.dart';
import 'package:daelim_2025/presentation/start/start_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation:
      AppRoute
          .start
          .toPath, //앱의 시작점을 start로 설정, 안드로이드 스튜디오의 시작화면 설정하는 것과비슷 manifest -> 라우트 확장함수로 변경했음 원래는 '/start'
  routes: [
    GoRoute(
      path: AppRoute.start.toPath,
      builder: (context, state) => StartScreen(),
    ),

    GoRoute(
      path: AppRoute.main.toPath,
      builder: (context, state) => MainScreen(),
    ),
  ],
);
