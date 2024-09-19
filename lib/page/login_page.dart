import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SvgPicture.asset('lib/assets/images/login.svg'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Faça login com o Google para prosseguir',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (kDebugMode) {
                          print('login google');
                        }
                      },
                      label: const Text('Fazer Login'),
                      icon: const Icon(Icons.g_mobiledata),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
