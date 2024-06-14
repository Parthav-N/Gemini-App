import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gemini_app/pages/home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _signinWithGoogle(context),
          child: const Text("Login with Google"),
        ),
      ),
    );
  }

  _signinWithGoogle (BuildContext context) async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    
    if(userCredential.user != null){
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(title: userCredential.user?.displayName ?? 'User', img: userCredential.user?.photoURL ?? ''),
      ));
    }
  }
}