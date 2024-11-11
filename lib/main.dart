import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/theme_provider.dart';
import 'package:provider_demo/pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, model, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Theme Demo',
          theme: model.themeData,
          home: const HomePage(),
        );
      },
    );
  }
}
