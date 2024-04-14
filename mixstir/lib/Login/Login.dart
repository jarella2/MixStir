import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // This method is a dummy function to simulate logging in.
  void _login() {
    // Normally, you would use a more secure way to handle login.
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email == 'test@example.com' && password == 'password123') {
      // Dummy condition to check login (for testing purposes).
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Show error message (for now just printing to console).
      print('Invalid credentials');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to MixStir'),
        backgroundColor: Colors.orange, // Change the AppBar color here.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                // Styling placeholder text, change color as needed.
                labelStyle: TextStyle(color: Colors.grey),
                // Border color when the TextField is selected.
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                // Normal border color.
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true, // Use for password input to obscure text.
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.orange, // Text color
              ),
              child: const Text('Login')
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
