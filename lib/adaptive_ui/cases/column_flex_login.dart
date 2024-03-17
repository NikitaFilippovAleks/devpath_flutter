import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300.0),
        child: Column(
          children: [
            const Spacer(flex: 5),
            const Expanded(flex: 10, child: FlutterLogo(size: 100.0)),
            const Spacer(flex: 10),
            const TextField(decoration: InputDecoration(labelText: 'Username')),
            const TextField(decoration: InputDecoration(labelText: 'Password')),
            const Spacer(flex: 3),
            ElevatedButton(onPressed: () {}, child: const Text('Login')),
            const Spacer(flex: 20)
          ],
        ),
      ),
    );
  }
}
