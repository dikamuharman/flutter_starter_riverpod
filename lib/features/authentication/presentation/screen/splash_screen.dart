import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_starter_riverpod/shared/configs/provider.dart';
import 'package:flutter_starter_riverpod/shared/configs/router/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    useEffect(() {
      Timer timer = Timer(
        const Duration(seconds: 3),
        () => router.replace(
          const Login(),
        ),
      );
      return timer.cancel;
    }, []);

    return const Scaffold(
      body: Center(
        child: Text('Simple login'),
      ),
    );
  }
}
