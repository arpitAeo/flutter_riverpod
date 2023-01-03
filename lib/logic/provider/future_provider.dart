import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/data/models/suggestion.dart';
import 'package:riverpod_app/data/services/api_service.dart';


// final suggestionFutureProvider = FutureProvider.autoDispose<Suggestion>((ref) async{
//    final apiService = ref.watch(apiServiceProvider);
//    return apiService.getSuggestion();
// });


final futureApiServiceFromSuggestion = FutureProvider.autoDispose<Suggestion>((ref) {
  final apiService = ref.watch(apiServiceProviderFromSuggestion);
  return apiService.getSuggestion();
  
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final suggestionRef = ref.watch(futureApiServiceFromSuggestion);
    return Scaffold(
      appBar: AppBar(title: const Text('Future Provider')),
      body:  RefreshIndicator(
        onRefresh: (() => ref.refresh(futureApiServiceFromSuggestion.future)),
        child: ListView(
          children: [
            suggestionRef.when(
                
              data: (data){
               return Text(data.activity!, 
               style: Theme.of(context).textTheme.headline4,
               );
              }, 
      
              error: (error, stacktrace){
                 return Text(error.toString());
              },
      
              loading: (){
                return const Center(child: CircularProgressIndicator());
              }),
          ],
        ),
      )
    );
  }
}