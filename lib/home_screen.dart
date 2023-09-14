import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/user.dart';
import 'main.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  /* void onSubmit(WidgetRef ref, String value) {
    // for state provider
    //ref.read(nameProvider.notifier).update((state) => value);

    // for State Notifier provider
    //ref.read(userChangeNotifierProvider).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.read(userChangeNotifierProvider).updateAge(int.parse(value));
  }*/

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final name = ref.watch(nameProvider) ?? '';
    //final user = ref.watch(userChangeNotifierProvider).user;
    //final user = ref.watch(userProvider.select((value) => value.age));
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(''),
          )
        ],
      ),
    );
  }
}

// ref.read is creating a listener (ref.read is not encourage to use inside of build method)
// ref.watch is creating a listener that will continuously listens the changes build
