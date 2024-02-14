import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './page/detail_page.dart';
import './page/edit_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider (
      create : ( context ) => TextInput(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      initialRoute: '/',

      routes: {
        '/': (context) => const MainPage() ,

        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return (
      const EditPage()
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return (
      const DetailPage()
    );
  }
}


