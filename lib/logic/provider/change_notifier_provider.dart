import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';


final valueProvider = Provider<int>((ref) => 42);

class ChangeNotifierProvider extends StatelessWidget {
  const ChangeNotifierProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Change Notifier Provider')),
    );
  }
}