import 'package:flutter/material.dart';
import 'package:sample_app/route_generator.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator().generateRoute,
      title: 'Insta Store',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber
      ),

    );
  }
}
