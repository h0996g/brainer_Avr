import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Advanced Row & Column',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        leading: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),
                  Text(
                    'Advanced Layout Example',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
