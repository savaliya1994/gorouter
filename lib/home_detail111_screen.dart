import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'myapproutconst.dart';

class HomeDetail111Screen extends StatelessWidget {
  const HomeDetail111Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home_work,
              color: Colors.red,
            ),
            Text('HomeDetail111 Screen'),
            ElevatedButton(
                onPressed: () {
                  context.go(MyAppRoutConst.demo);
                },
                child: Text('detail')),
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
