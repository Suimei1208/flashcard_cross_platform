import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Wellcome to Flash Card', style: TextStyle(fontSize: 25, color: Colors.black),),
          Text('Log in', style: TextStyle(fontSize: 20, color: Colors.black)),
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),

          SizedBox(height: 24.0),

          TextField(
            obscureText: !_isPasswordVisible,
            obscuringCharacter: '*',
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                }, 
                icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off))
            ),
          ),

          SizedBox(height: 24.0),

          ElevatedButton(
            onPressed: (){

            }, 
            child: Text('Login'),
            style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(350, 60))),
          )
        ],
      ),
    );;
  }
}