import 'package:profiling_app/xcore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                    Text(
                      'Let\'s Get Started!',
                      style: titleStyle.copyWith(
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: kPadding,
                    ),
                    Text(
                      'Create an account to get all features',
                      style: subtitleNormalStyle.copyWith(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(kPadding * 4),
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
                        label: 'Email',
                      ),
                      const SizedBox(
                        height: kPadding * 2,
                      ),
                      const InputWidget(
                        keyboardType: TextInputType.name,
                        label: 'Password',
                      ),
                      const SizedBox(
                        height: kPadding * 2,
                      ),
                      const InputWidget(
                        keyboardType: TextInputType.name,
                        label: 'Confirm Password',
                      ),
                      const SizedBox(
                        height: kPadding * 4,
                      ),
                      ButtonWidget(
                        title: 'Sign Up',
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
                            'Already have an account?',
                            style: subtitleNormalStyle.copyWith(
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () => {
                              Get.toNamed(PageRouter.signIn),
                            },
                            child: const Text('Login here'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
