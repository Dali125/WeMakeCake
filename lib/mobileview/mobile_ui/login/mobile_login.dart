import 'package:flutter/material.dart';
import 'package:untitled/Global/login.dart';
import 'package:untitled/Global/ui_elements/my_button.dart';
import 'package:untitled/logic/sign_in.dart';

import 'Confirmer.dart';
class MobileLogin extends StatefulWidget {
  const MobileLogin({Key? key}) : super(key: key);

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {


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
              height: width > 600 ? 400 : 200,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/CakeC.png'),),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in',
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
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            width < 600 ?

                MyTextButton(label: 'Login',
                  buttonRadius: 10,
                  color: Colors.red,
                padding: 20,
                ontap: (){

                  SignIn signin = SignIn(email: nameController.text.trim(), password: passwordController.text.trim());
                  signin.ConfirmSignIn();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Confirmer()));
                },

                )

            // Container(
            //     height: 50,
            //     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            //     child: ElevatedButton(
            //       child: const Text('Login'),
            //       onPressed: () {
            //         SignIn signin = SignIn(email: nameController.text.trim(), password: passwordController.text.trim());
            //         signin.ConfirmSignIn();
            //         Navigator.pushReplacement(
            //             context, MaterialPageRoute(builder: (context) => Confirmer()));
            //       },
            //     )
            // )
            : Container(
              height: 50,
              padding: EdgeInsets.only(left: width/3,right: width/3),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                  SignIn signin = SignIn(email: nameController.text.trim(), password: passwordController.text.trim());
                  signin.ConfirmSignIn();
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Confirmer()));
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

                  },
                )
              ],
            ),
          ],
        ));
  }
}


