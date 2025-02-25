import 'package:flutter/cupertino.dart';
import 'package:sample_app/route_generator.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      onGenerateRoute: RouteGenerator().generateRoute,
      title: 'Insta Store',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.activeOrange
      ),

    );
  }
}
