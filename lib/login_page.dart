import 'package:flutter/material.dart';
import 'home_page.dart';
import 'register_page.dart';
import 'forgot_password_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter email and password'),
        ),
      );
      return;
    }

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
      (route) => false,
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LUXE',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'X',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 55),

              // Login title
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 25),

              // Email
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                  enabledBorder: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 18),

              // Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  enabledBorder: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ForgotPasswordPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Login button
              Center(
                child: SizedBox(
                  width: 88,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: loginUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC8B1C8),
                      foregroundColor: Colors.black,
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Register
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Create a new account',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}