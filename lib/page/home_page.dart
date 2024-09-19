import 'package:flutter/material.dart';
import 'package:google_sing_in/controllers/user_controller.dart';
import 'package:google_sing_in/page/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserController.user;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage(user?.photoURL ?? ''),
              radius: 60,
            ),
            const SizedBox(height: 20),
            Text(
              user?.displayName ?? '',
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: () async {
                await UserController.signOut();
                if (context.mounted) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ));
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                foregroundColor: Colors.white,
              ),
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
