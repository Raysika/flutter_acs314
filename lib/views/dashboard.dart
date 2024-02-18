import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to the Dashboard!", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text("Hard-coded Data:"),
            Text("User: John Doe"),
            Text("Total Orders: 50"),
            Text("Total Revenue: \$5000"),
          ],
        ),
      ),
    );
  }
}
