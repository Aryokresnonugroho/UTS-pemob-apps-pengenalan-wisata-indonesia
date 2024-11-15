import 'package:flutter/material.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/gambar_page.dart';
import 'presentation/pages/about_page.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/controllers/home_controller.dart';
import 'domain/usecases/navigate_to_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize services and controllers
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey, // Use global navigator key
      title: 'uts-wisata',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(homeController),
        '/gambar': (context) => GambarPage(homeController),
        '/about': (context) => AboutPage(homeController),
      },
    );
  }
}
