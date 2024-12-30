import 'package:flutter/material.dart';
import 'package:keys/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final routeKeys = appRoutes.keys.toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: routeKeys.length,
        itemBuilder: (_, index) {
          final routeKey = routeKeys[index];

          return ListTile(
            title: Text(routeKey),
            onTap: () {
              Navigator.pushNamed(
                context,
                routeKey,
              );
            },
          );
        },
      ),
    );
  }
}
