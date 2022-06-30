import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/login_i.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Welcome  $name',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'Username',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoute.homeRoute);
                  },
                  child: Text(
                    'LOGIN',
                  ),
                  style: TextButton.styleFrom(minimumSize: Size(500, 40)),
                ),
              ],
            ),
          ),
        ]),
      ),
      drawer: Drawer(),
    );
  }
}
