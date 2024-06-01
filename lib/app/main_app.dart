import 'package:e_comm_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      routerConfig: AppRouter().goRouter,
    );
    // return MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(create: ((context) => ScreenIndexProvider())),
    //   ],
    //   child: MaterialApp.router(
    //     title: 'Flutter Demo',
    //     builder: (context, child) {
    //       return MediaQuery(
    //         data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
    //         child: child!,
    //       );
    //     },
    //     debugShowCheckedModeBanner: false,
    //     themeMode: ThemeMode.system,
    //     // darkTheme: TAppTheme.darkTheme,
    //     // theme: TAppTheme.lightTheme,
    //     // home: const HomePage(),
    //   ),
    // );
  }
}
