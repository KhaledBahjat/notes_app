import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nots_app/core/routing/app_routs.dart';
import 'package:nots_app/screens/auth/widgets/custom_button.dart';
import 'package:nots_app/screens/auth/widgets/customtextform.dart';
import 'package:nots_app/screens/auth/widgets/forgot_pass.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: Image.asset(
                  'assets/logo/logo.png',
                  height: 80,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                label: Text('Email'),
                hintText: 'Enter your email',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),

              CustomTextFormField(
                label: Text(
                  'Password',
                  style: TextStyle(color: Colors.black),
                ),
                hintText: 'Enter your password',
              ),
              SizedBox(
                height: 10.h,
              ),
              ForgotPasswordWidget(),
              SizedBox(
                height: 15.h,
              ),
              CustomButton(
                onPressed: () {},
                text: 'Sign In',
                backgroundColor: Colors.orange,
              ),
              SizedBox(
                height: 15.h,
              ),
              Divider(),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                onPressed: () {},
                text: 'Continue with Google',
                backgroundColor: Colors.red,
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () => GoRouter.of(context).pushNamed(AppRouts.register),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?  ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
