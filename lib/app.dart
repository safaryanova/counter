import 'package:flutter/material.dart';

import 'home_page.dart';

//после импортов 1 пустая строка должна быть и сам файл должен заканчиваться 1 пустой строкой
//перед коммитом запускай команду flutter format .
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}
