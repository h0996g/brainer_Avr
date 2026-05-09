import 'package:braineravr/cache/cache_helper.dart';
import 'package:braineravr/form/login_page.dart';
import 'package:braineravr/form/profile_page.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.brown,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: CacheHelper.prefs.getBool('isLoggedIn') == true
          ? ProfilePage(name: CacheHelper.prefs.getString('name') ?? 'Unknown')
          : LoginPage(
              onThemeChanged: (isDarkMode) {
                setState(() {
                  this.isDarkMode = isDarkMode;
                });
              },
            ),
      debugShowCheckedModeBanner: false,
    );
  }
}
