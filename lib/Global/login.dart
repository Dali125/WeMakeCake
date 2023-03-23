import 'package:flutter/material.dart';

import '../mobileview/mobile_ui/login/mobile_login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return Scaffold(


      body: MobileLogin(),
    );
  }
}
