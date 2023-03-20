import 'package:flutter/material.dart';
import 'screens/about_screen.dart';
import 'screens/contact_screen.dart';
import '/screens/home_screen.dart';
import 'screens/error_screen.dart';
import 'screens/product_screen.dart';
import 'package:go_router/go_router.dart';

import 'screens/user_screen.dart';
import 'screens/users_screen.dart';

import 'package:flutter_web_plugins/url_strategy.dart';

//import 'screens/home_screen.dart';
// import 'k1_splash_screen'
void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/home',
  errorBuilder: (context, state) => ErrorScreen(),
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => ContactScreen(),
    ),
    GoRoute(
      path: '/users',
      builder: (context, state) => UsersScreen(),
    ),
    GoRoute(
      path: '/product/:productId',
      builder: (context, state) => ProductScreen(
        productId: state.params['productId']!,
      ),
    ),
    GoRoute(
      path: '/users/:userId',
      builder: (context, state) => UserScreen(
        userId: state.params['userId']!,
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
