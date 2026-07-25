import 'package:go_router/go_router.dart';
import '../screens/login_screen.dart';
import '../screens/player_screen.dart';
import '../screens/detail_screen.dart'; 
import '../entities/player.dart';
import '../screens/new_edit_player_screen.dart';

final appRouter = GoRouter(

  initialLocation: '/players',

  routes: [

    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),

    GoRoute(
      path: '/players',
      builder: (context, state) => PlayerScreen(),
    ),

    GoRoute(
      path: '/detail',
      builder: (context, state)  => DetailScreen(
        player: state.extra as Player,
      ),
    ),
    GoRoute(
      path: '/new_edit_players',
      builder: (context, state) => NewEditPlayerScreen(
        player: state.extra as Player?,
      ),
    ),
  ],

);