import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterFormWidget extends HookConsumerWidget {
  const RegisterFormWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();
    final isInvisible = useState(true);
    return Column(
      children: [
        TextFormField(
          controller: emailTextController,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: passwordTextController,
          obscureText: isInvisible.value,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                isInvisible.value
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
              ),
              onPressed: () => isInvisible.value = !isInvisible.value,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Register'),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(44),
          ),
        ),
      ],
    );
  }
}
