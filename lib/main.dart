import 'package:flutter/material.dart';
import 'core/supabase_client.dart';
import 'screens/splash_screen.dart';
import 'screens/songs_screen.dart';
import 'screens/admin/login_screen.dart';
import 'screens/admin/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase
  await AppSupabaseClient.instance.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/songs': (context) => SongsScreen(),
        '/admin-login': (context) => AdminLoginScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
