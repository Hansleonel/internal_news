import 'package:flutter/material.dart';
import 'package:internal_news/widgets/internal_heading_text.dart';
import 'package:internal_news/widgets/internal_title_text.dart';

import '../../widgets/internal_elevated_button.dart';
import '../../widgets/intertal_subtitle_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InternalHeadingText(text: 'Welcome 👋'),
              const SizedBox(height: 16.0),
              InternalSubTitleText(
                text: 'Please enter your email & password to sign in',
                color: Colors.grey[600],
              ),
              const SizedBox(height: 32.0),
              const InternalTitleText(text: 'Email'),
              const SizedBox(height: 8.0),
              TextFormField(
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const InternalTitleText(text: 'Password'),
              const SizedBox(height: 8.0),
              TextFormField(
                obscureText: true,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey[400],
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[400],
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {}),
                  const InternalTitleText(text: 'Remember me'),
                  const Spacer(),
                  const InternalTitleText(
                    text: 'Forgot Password?',
                    color: Color(0xFF1b998e),
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              const Divider(),
              const SizedBox(height: 32.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InternalSubTitleText(
                    text: 'Don\'t have an account?',
                  ),
                  SizedBox(width: 8.0),
                  InternalTitleText(
                    text: 'Sign Up',
                    color: Color(0xFF1b998e),
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 24.0),
        child: InternalElevatedButton(
          buttonText: 'Sign In',
          onPressed: () {
            print('Sign In button pressed');
            Navigator.pushReplacementNamed(context, '/news');
          },
        ),
      ),
    );
  }
}
