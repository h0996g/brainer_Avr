import 'package:flutter/material.dart';

class DesignStack extends StatelessWidget {
  const DesignStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Expanded Widget Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: 300, width: 300, color: Colors.red),

              Positioned(
                left: 50,
                child: Container(height: 200, width: 200, color: Colors.green),
              ),
              Positioned(
                right: 50,
                child: Container(height: 100, width: 100, color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
