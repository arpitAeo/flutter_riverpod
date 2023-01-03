import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/data/models/suggestion.dart';

final apiServiceProvider = Provider<APIService>(((ref) => APIService()));

final apiServiceProviderFromSuggestion = Provider<APIService>(((ref) => APIService()));

class APIService{
  Future<Suggestion> getSuggestion() async{
    try {
      final response = await Dio().get('https://www.boredapi.com/api/activity');
      return Suggestion.fromJson(response.data);
    } catch (e) {
      throw Exception('Error getting data.');
    }
  }
}