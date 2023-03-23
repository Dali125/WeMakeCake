import 'package:flutter/material.dart';
import 'package:untitled/logic/sign_in.dart';

import 'Confirmer.dart';
class LoginFail extends StatefulWidget {
  const LoginFail({Key? key}) : super(key: key);

  @override
  State<LoginFail> createState() => _LoginFailState();
}

class _LoginFailState extends State<LoginFail> {


  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    double width =  MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image.asset('CakeC.png')),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            width < 600 ? Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ): Container(
              padding: EdgeInsets.only(left: width/3,right: width/3),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  errorText: 'Enter a valid username or password'
                ),
              ),
            ),
            width > 600 ? Container(
              padding: EdgeInsets.only(left: width/3,right: width/3,top: 10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ):
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  errorText: 'Enter a valid username or password'
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            width < 600 ? Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ): Container(
                height: 50,
                padding: EdgeInsets.only(left: width/3,right: width/3),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },)),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Register Here',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                    SignIn signin = SignIn(email: nameController.text.trim(), password: passwordController.text.trim());
                    signin.ConfirmSignIn();

                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => Confirmer()));
                  },
                )
              ],
            ),
          ],
        ));
  }
}


