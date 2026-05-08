import 'package:braineravr/navigation/page_1.dart';
import 'package:braineravr/navigation/page_3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void dispose() {
    print('Page 2 dispose');
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('Page 2 initState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Center(child: Text('This is Page 3')),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Page3()),
                (route) => false,
              );
            },
            child: Text('Go back to Page 3'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back to Page 1'),
          ),
        ],
      ),
    );
  }
}
