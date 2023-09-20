import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/myapproutconst.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HomeScreen'),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyAppRoutConst.homedetail);
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
