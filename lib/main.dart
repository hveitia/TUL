import 'package:flutter/material.dart';
import 'package:tests/pages/home/page.dart';
import 'package:tests/pages/test1/page.dart';
import 'package:tests/theme/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = {
      '/': (_) => const HomePage(),
      '/test': (_) => const Test1Page(),
    };
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: routes,
      theme: Theme.of(context).copyWith(
        primaryColor: AppColors.primary,
        secondaryHeaderColor: AppColors.secondary,
      ),
    );
  }
}
