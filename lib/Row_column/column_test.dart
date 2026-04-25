import 'package:braineravr/Row_column/card_widget.dart';
import 'package:flutter/material.dart';

class ColumnTest extends StatelessWidget {
  const ColumnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cardFunction(icon: Icons.group, title: 'Users', subtitle: '1000'),
            cardFunction(icon: Icons.star, title: 'Rating', subtitle: '4.5'),
            cardFunction(
              icon: Icons.access_time,
              title: 'Time',
              subtitle: '2h 30m',
            ),
          ],
        ),
      ),
    );
  }
}

Container cardFunction({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Container(
    width: 100,
    padding: EdgeInsets.symmetric(vertical: 20),

    decoration: BoxDecoration(
      color: Colors.green[300],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(icon, size: 50), Text(title), Text(subtitle)],
    ),
  );
}
