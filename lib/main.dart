// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:gemini_app/consts.dart';
// import 'package:gemini_app/pages/login_page.dart';
// import 'package:gemini_app/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (BuildContext context, snapshot) {
      //     if (snapshot.hasError) {
      //       return Scaffold(body: Center(child: Text(snapshot.error.toString())));
      //     }
      //     if (snapshot.connectionState == ConnectionState.active) {
      //       if (snapshot.data == null) {
      //         return const LoginPage();
      //       } else {
      //         User? user = FirebaseAuth.instance.currentUser;
      //         if (user != null) {
      //           return HomePage(title: user.displayName ?? 'User', img: user.photoURL ?? '');
      //         } else {
      //           return const LoginPage();
      //         }
      //       }
      //     }
      //     return const Center(child: CircularProgressIndicator());
      //   },
      // ),
      home: const HomePage(title: "Parthav", img:"C:/Users/Parthav Nuthalapati/OneDrive/Parthav.jpg"),
      // home: const LoginPage(),
    );
  }
}
