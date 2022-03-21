import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'dashboard.dart';
import 'routes/routes.dart';

class GoogleLoginApp extends StatefulWidget {
  const GoogleLoginApp({ Key? key }) : super(key: key);

  @override
  _GoogleLoginAppState createState() => _GoogleLoginAppState();
}

class _GoogleLoginAppState extends State<GoogleLoginApp> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;
    return Scaffold(
        appBar: AppBar(
          title: Text('Google Login (' + (user == null ? 'Logged out' : 'User: ' + user.displayName.toString()) + ')'),
        ), // AppBar
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/SWD-01.png'),
              ElevatedButton(child: Text('Log In With Google'),
                  onPressed: user != null ? null : () async {
                    await _googleSignIn.signIn();
                    // setState(() {});
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                  }), // ElevatedButton
              ElevatedButton(child: Text('Log Out'),
                  onPressed: user == null ? null : () async {
                    await _googleSignIn.signOut();
                    setState(() {});
                  }), // ElevatedButton
            ],
          ), // Column
        ), // Center
      );
  }
}