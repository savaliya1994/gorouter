import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'myapproutconst.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('profileScreen'),
            ElevatedButton(
                onPressed: () {
                  context.go(MyAppRoutConst.setting);
                },
                child: Text('go to setting')),
          ],
        ),
      ),
    );
  }
}
