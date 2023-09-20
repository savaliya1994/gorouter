import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'myapproutconst.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DEMO',
              textScaleFactor: 3,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go(MyAppRoutConst.profile);
                },
                child: Text('go to profile')),
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
