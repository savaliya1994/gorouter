import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'myapproutconst.dart';

class HomeDetailScreen extends StatelessWidget {
  final name;

  const HomeDetailScreen({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name),
                Icon(
                  Icons.home,
                  color: Colors.red,
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyAppRoutConst.homedetail1111);
                },
                child: Text('next')),
            IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.arrow_back))
          ],
        ),
      ),
    );
  }
}
