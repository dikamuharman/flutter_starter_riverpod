import 'package:flutter/material.dart';
import 'package:flutter_starter_riverpod/features/authentication/presentation/widgets/login_form_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign in',
                  style: theme.textTheme.headline3
                      ?.copyWith(color: Colors.black87),
                ),
                SizedBox(
                  height: size.height * 0.055,
                ),
                LoginFormWidget(),
                SizedBox(
                  height: size.height * 0.015,
                ),
                SizedBox(
                  width: size.width,
                  child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login with google',
                    style: theme.textTheme.button?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(44),
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have account ?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign up'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
