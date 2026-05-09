import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  final TextEditingController passwordController;
  const PasswordFieldWidget({super.key, required this.passwordController});

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    print('PasswordFieldWidget build called');
    return TextFormField(
      obscureText: !isPasswordVisible,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }

        return null;
      },
      controller: widget.passwordController,
      decoration: InputDecoration(
        labelText: 'Enter your password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,

            color: Colors.blue,
          ),
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
      ),
    );
  }
}
