import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/home_screen.dart';
import 'package:riverpod_flutter/user.dart';

// Types of Provider:
// 1. Provider: Its read only widget means we cannot change the value
// 2. State Provider: To use to update the value from outside. It's only work for simple values like int, bool, String etc. But it doesn't work for the complex value like a value in the class. In this seen will use State Notifier Provider
// 3. State Notifier and Sate Notifier Provider: State notifier provider is used widely, because it is simply handel the sate by using previous state and new state of a class.
// 4. Change Notifier and Change Notifier Provider: Not recommended to use this. Cause this mutable.
// 5. Future Provider: Using for async calls or http calls or firebase calls. It's kind of a shorter code and better replacement for future.builder

// Creating providers:
// Just Provider:
//final nameProvider = Provider<String>((ref) => "Mithila");

// state provider:
//final nameProvider = StateProvider<String?>((ref) => null);

// StateNotifier provider:
/*final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(),
);*/

// Change Notifier Provider
/*final userChangeNotifierProvider = ChangeNotifierProvider(
  (ref) => UserNotifierChange(),
);*/

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
