import 'package:counter_homework/button_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //названия очень важны
  // не очень понятно что за каунтер почему он именно 113
  int _counter = 113;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ButtonText('Нажми "-" для уменьшения'),
              //в чем смысл этого бокса?
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: _decrement,
                    ),
                    Text('$_counter'),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: _increment,
                    ),
                  ],
                ),
              ),
              //и этого
              const SizedBox(
                height: 10,
              ),
              //строки в дарте принято оборачивать в одинарные кавычки
              //со знаком минус правильно поступила
              //а тут пришлось экранировать
              ButtonText("Нажми \"+\" для увеличения")
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Counter',
          ),
        ),
      ),
    );
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }
}
