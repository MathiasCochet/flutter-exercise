import 'package:flutter/material.dart';
import 'package:flutter_exercise/features/auth/ui/login_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginViewModelProvider);

    ref.listen<LoginState>(loginViewModelProvider, (previous, next) {
      if (next == LoginState.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid credentials, please try again.'),
            backgroundColor: Colors.red,
          ),
        );
      } else if (next == LoginState.success) {
        // Navigate to Homescreen
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 350,
              child: switch (loginState) {
                LoginState.loading => _buildLoadingWidget(),
                _ => _buildLoginWidget(),
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return const SizedBox(
      height: 120,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildLoginWidget() {
    final loginViewModel = ref.read(loginViewModelProvider.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 16,
      children: [
        TextField(
          controller: _usernameController,
          decoration: const InputDecoration(
            hintText: "Username",
            labelText: "Username",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
          keyboardType: TextInputType.text,
        ),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: "Password",
            labelText: "Password",
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),
          obscureText: !_isPasswordVisible,
        ),
        TextButton(
          onPressed: () {
            final username = _usernameController.text;
            final password = _passwordController.text;
            loginViewModel.login(username, password);
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
