import 'package:counter_homework/button_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              const SizedBox(
                height: 10,
              ),
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
