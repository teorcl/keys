import 'package:flutter/material.dart';
import 'package:keys/pages/animated_text.dart';
import 'package:keys/pages/home_page.dart';
import 'package:keys/routes/app_routes.dart';

import 'pages/list_keys_page.dart';
//import 'package:keys/pages/key_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: appRoutes,
      home: HomePage(),
    );
  }
}
