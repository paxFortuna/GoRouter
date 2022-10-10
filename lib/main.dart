import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'detail_screen.dart';
import 'error_screen.dart';
import 'home_screen.dart';
import 'modal_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'GoRouter Routes';

  @override
  Widget build(BuildContext context) {
    // final goRouter = GoRouter(
    final _router = GoRouter(
      errorBuilder: (context, state) => ErrorScreen(error: state.error),
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
          routes: [
            // GoRoute(
            //   path: 'detail',
            //   builder: (context, state) => const DetailScreen(),
            // ),
            GoRoute(
              path: 'detail/:id',
              builder: (context, state) =>
                  DetailScreen(id: state.params['id']!),
            ),
            GoRoute(
              path: 'modal',
              pageBuilder: (context, state) => MaterialPage(
                fullscreenDialog: true,
                child: ModalScreen(blog:state.extra.toString()),
              ),
            ),
          ],
        ),
      ],
    );
    return MaterialApp.router(
      title: title,
      // routerDelegate: goRouter.routerDelegate,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
