import 'package:flutter/material.dart';
import 'package:learning/list_wheel_scroll_view.dart';
import 'package:learning/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Url Launcher"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UrlLauncherScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: Text("List Wheel Scroll View"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListWheelScrollViewScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
