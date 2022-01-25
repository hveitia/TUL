import 'package:flutter/material.dart';
import 'package:tests/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text('Tul Tests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(top: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button(
              context: context,
              title: 'Ir al Test',
              route: '/test',
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({
    required BuildContext context,
    required String title,
    required String route,
  }) {
    return Center(
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Inter',
                color: Color(0xffffffff),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: -0.16,
              ),
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.secondary),
          padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
