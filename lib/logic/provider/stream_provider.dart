import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/data/services/stream_service.dart';



final streamValueProvider = StreamProvider.autoDispose((ref) {
  final streamService = ref.watch(streamServiceProvider);
  return streamService.getStream();
});

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamvalue = ref.watch(streamValueProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Stream Provider')),
     body: Center(
      child: 
      streamvalue.when(
        data: (int data){
          return Text(data.toString(),
          style: Theme.of(context).textTheme.headline4,
          );
        }, 
        
        error: ((error, stackTrace) 
        {
           return Text(error.toString());
        }),
        
        loading: ()
        {
          return const CircularProgressIndicator();
        })),
    );
  }
}