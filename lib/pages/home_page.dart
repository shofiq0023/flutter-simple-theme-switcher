import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          appBar: AppBar(
            title: const Text("Home Sweet Home!"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  value.themeMode == 0 ? Icons.light_mode : Icons.dark_mode,
                  size: 256.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    value.toggleTheme();
                  },
                  child: Text(value.themeMode == 0 ? "Go to bed" : "Wake up"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
