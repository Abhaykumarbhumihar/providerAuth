import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_auth/auth_provider/auth_provider.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: Provider.of<AuthProvider>(context).emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: Provider.of<AuthProvider>(context).passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).loginUser();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

