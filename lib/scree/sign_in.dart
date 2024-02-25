import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_auth/auth_provider/auth_provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<AuthProvider>(
          builder: (context,provider,child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 TextField(
                  controller: provider.emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                 TextField(
                  controller: provider.passwrdController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16.0),
                  Center(
                child: ElevatedButton(
                    onPressed: () {
                     provider.saveUser();
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 2.0,
                      shadowColor: Colors.transparent,
                      backgroundColor: const Color(0xffDBB874),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0), // Rounded corners
                      ),
                    ),
                    child: const Text("Sign In")),
              ),
              ],
            );
          }
        ),
      ),
    );
  }
}
