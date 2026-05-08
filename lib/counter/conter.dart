import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  Color? primary;
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  dispose() {
    print('dispose');
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, title: Text('Counter App')),
      body: Center(
        child: Text(
          'Counter Value: $counter',
          style: TextStyle(fontSize: 24, color: primary),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          counter++;
          setState(() {});
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
