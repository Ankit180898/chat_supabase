import 'package:chat_supabase/constants.dart';
import 'package:chat_supabase/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dotenv;
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await dotenv.dotenv.load(fileName: '.env');
  final supaUri = dotenv.dotenv.env['SUPABASE_URL']; //get env key
  final supaAnon = dotenv.dotenv.env['SUPABASE_ANONKEY'];
  await Supabase.initialize(
    url: supaUri!,
    anonKey: supaAnon!,
  );
  runApp(const MyApp());
}

final supabaseC = Supabase.instance.client;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}

