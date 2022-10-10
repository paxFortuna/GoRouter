import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'detail_screen.dart';
import 'home_screen.dart';
import 'modal_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'detail',
              builder: (context, state) => const DetailScreen(),
            ),
            GoRoute(
              path: 'modal',
              pageBuilder: (context, state) => const MaterialPage(
                fullscreenDialog: true,
                child: ModalScreen(),
              ),
            ),
          ],
        ),
      ],
    );
    return MaterialApp.router(
      title: 'gorouter_demo',
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
