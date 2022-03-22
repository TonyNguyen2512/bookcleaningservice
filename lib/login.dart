import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';



import 'dashboard.dart';
import 'implement/get_token_imp.dart';
import 'model/list_token_res.dart';
import 'routes/routes.dart';
import 'url/url_api.dart';

class GoogleLoginApp extends StatefulWidget {
  const GoogleLoginApp({ Key? key }) : super(key: key);

  @override
  _GoogleLoginAppState createState() => _GoogleLoginAppState();
}

class _GoogleLoginAppState extends State<GoogleLoginApp> {
// Create storage
final storage = new FlutterSecureStorage();
static String token = "";

  ListTokenRes result = new ListTokenRes();
  @override
  void initState() {
    TokenRepImp().getToken(UrlApi.GetToken).then((value)
async => { 
      log(value.toString()),
      setState(() {
        result = value;
        token = value.toString();
      }), 
      await storage.write(key: "token", value: value.toString())
    });
    super.initState();
  }

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
                    setState(() {});
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                  }), // ElevatedButton
                  ElevatedButton(child: Text('Dashboard'),
                  onPressed: user == null ? null : () async {
                    if (user != null) {setState(() {});
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));}
                  }), // ElevatedButton
              ElevatedButton(child: Text('Log Out'),
                  onPressed: user == null ? null : () async {
                    await _googleSignIn.signOut();
                    setState(() {});
                  }), 
                  Text(''),// ElevatedButton
            ],
          ), // Column
        ), // Center
      );
  }
}