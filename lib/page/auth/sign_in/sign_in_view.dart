import 'package:profiling_app/xcore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/Login.png',
                        width: 150,
                        height: 150,
                      ),
                      const SizedBox(
                        height: kPadding * 4,
                      ),
                      Text(
                        'Welcome Back!',
                        style: titleStyle.copyWith(
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(
                        height: kPadding,
                      ),
                      Text(
                        'Log in to your account',
                        style: subtitleNormalStyle.copyWith(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kPadding * 4,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: kPadding * 2,
                      right: kPadding * 2,
                    ),
                    child: Column(
                      children: [
                        const InputWidget(
                          keyboardType: TextInputType.name,
                          label: 'Username',
                        ),
                        const SizedBox(
                          height: kPadding * 2,
                        ),
                        const InputWidget(
                          keyboardType: TextInputType.name,
                          label: 'Password',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () => {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: kPadding * 2,
                        ),
                        ButtonWidget(
                          title: 'Login',
                          onPressed: () => {
                            Get.toNamed(PageRouter.home),
                          },
                        ),
                        const SizedBox(
                          height: kPadding * 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: subtitleNormalStyle.copyWith(
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: () => {
                                Get.toNamed(PageRouter.signUp),
                              },
                              child: const Text('Sign Up'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
