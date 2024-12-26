import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/theming/my_theme_data.dart';

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Portfolio',
      routerConfig: AppRouter.router,
      theme: MyThemeData.getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
