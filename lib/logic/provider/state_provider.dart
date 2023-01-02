import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final valueStateProvider = StateProvider<int>((ref) => 42);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
    Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueStateProvider);
    ref.listen<int>(valueStateProvider, (previous, next) { 
      if(next == 43){
        print('gotcha');
      }
    });
    return Scaffold(
      appBar: AppBar(title: Text('State Notifier Provider',),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
               child: Text(
                'The value is $value',
                style: Theme.of(context).textTheme.headline4,
            ),        
             ),
             ElevatedButton(onPressed: (){
                  ref.read(valueStateProvider.notifier).state++;
             }, child: Text('Increment')),

             ElevatedButton(onPressed: (){
                  ref.invalidate(valueStateProvider);
             }, child: Text('Invalidate'))
          ],
        ),
      )
    );
  }
}