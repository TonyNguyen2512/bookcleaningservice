import 'package:flutter/material.dart';

import '../dashboard.dart';
import '../login.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    // "/": (context) => const Welcome(),
    "/": (context) => const GoogleLoginApp(),    
    "/Dashboard": (context) => const Dashboard(),
  };
}
