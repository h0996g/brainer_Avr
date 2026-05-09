import 'package:braineravr/cache/cache_helper.dart';
import 'package:braineravr/form/login_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  const ProfilePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Page',
          style: TextStyle(color: Colors.white),
        ),

        actions: [
          TextButton(
            onPressed: () async {
              await CacheHelper.prefs.remove('isLoggedIn');
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
            child: Text('Logout', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome $name',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
