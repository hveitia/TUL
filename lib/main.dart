import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/pages/home/page.dart';
import 'package:tests/pages/test1/bloc/bloc.dart';
import 'package:tests/pages/test1/page.dart';
import 'package:tests/repository.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<Test1Bloc>(create: ( _ ) => Test1Bloc(Repository()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/',
        routes: routes,
        theme: Theme.of(context).copyWith(
          primaryColor: AppColors.primary,
          secondaryHeaderColor: AppColors.secondary,
        ),
      ),
    );
  }
}
