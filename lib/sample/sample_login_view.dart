import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {},
      ),
      appBar: AppBar(title: Text('ClassList')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(),
          TextButton.icon(
              onPressed: () {
                //TODO: Login
              },
              icon: Icon(Icons.check),
              label: Text('Login'))
        ],
      ),
    );
  }
}
