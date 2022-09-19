import 'package:flutter/material.dart';
import 'package:flutter_starter_riverpod/features/authentication/presentation/widgets/register_form_widget.dart';
import 'package:flutter_starter_riverpod/shared/configs/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
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
                  'Register',
                  style: theme.textTheme.headline3
                      ?.copyWith(color: Colors.black87),
                ),
                SizedBox(
                  height: size.height * 0.055,
                ),
                RegisterFormWidget(),
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
                    Text('Already have account ?'),
                    TextButton(
                      onPressed: () => router.pop(),
                      child: Text('Sign in'),
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
