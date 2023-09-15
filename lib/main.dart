import 'package:clean_architecture_challenge/config/router.dart';
import 'package:clean_architecture_challenge/config/routes.dart';
import 'package:clean_architecture_challenge/core/dependency_injection/service_locator.dart';
import 'package:clean_architecture_challenge/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aban Tether task',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.userDetails,
    );
  }
}
