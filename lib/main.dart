import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:unifamm/pages/profile1_page.dart';
import 'package:unifamm/pages/home_page.dart';
import 'package:unifamm/pages/reset_password.dart';
import 'package:unifamm/pages/sign_up.dart';
import 'package:unifamm/pages/verify_email.dart';
import 'package:unifamm/util/firebase_stream.dart';
import 'pages/sign_in.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const FirebaseStream(),
        '/home': (context) => const HomePage(),
        '/account': (context) => const AccountScreen(),
        '/login': (context) => const SignInPage(),
        '/signup': (context) => const SignUp(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/verify_email': (context) => const VerifyEmailScreen(),
      },
      initialRoute: '/',
    );
  }
}
