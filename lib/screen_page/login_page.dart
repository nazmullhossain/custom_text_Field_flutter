import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
   LoginPage({Key? key , this.email, this.password}) : super(key: key);
  String? email, password;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(' the ame ${widget.email},  ${widget.password}'),
      ),
    );
  }
}
