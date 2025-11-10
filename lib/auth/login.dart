import 'package:flutter/material.dart';
import 'package:task_6/SocialMedia.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String errorMessage;
  late bool isError;

  @override
  void initState() {
    errorMessage = "";
    isError = false;
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void checkLogin(String username, String password) {
    setState(() {
      if (username.isEmpty) {
        errorMessage = "Please input your username!";
        isError = true;
      } else if (password.isEmpty) {
        errorMessage = "Please input your password!";
        isError = true;
      } else {
        errorMessage = "";
        isError = false;

        // Navigate to Socialmedia page after successful login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Socialmedia()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/tiktok-logo_705838-12827.avif',
                    height: 48,
                    width: 48,
                  ),
                  const SizedBox(width: 12),
                  Text("TIKTOK", style: txtstyle),
                ],
              ),
              const SizedBox(height: 15),

              // Username Field
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 15),

              // Password Field
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  checkLogin(usernameController.text, passwordController.text);
                },
                child: Text('LOGIN', style: txtstyle2),
              ),

              // Error Message
              const SizedBox(height: 15),
              if (isError) Text(errorMessage, style: errortxtstyle),
            ],
          ),
        ),
      ),
    );
  }
}

// Text Styles
var txtstyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
);

var txtstyle2 = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 24,
  color: Colors.white,
);

var errortxtstyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
  color: Colors.red,
);
