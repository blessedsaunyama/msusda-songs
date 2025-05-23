import 'package:flutter/foundation.dart'; // For debugPrint
import 'package:supabase_flutter/supabase_flutter.dart';

class AppSupabaseClient {
  static final AppSupabaseClient _instance = AppSupabaseClient._internal();
  static AppSupabaseClient get instance => _instance;

  late final SupabaseClient _client;

  // Initialize Supabase
  Future<void> init() async {
    try {
      await Supabase.initialize(
        url: 'https://ukkwotaxornahzaikole.supabase.co',
        anonKey:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVra3dvdGF4b3JuYWh6YWlrb2xlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc5MDYwMTEsImV4cCI6MjA2MzQ4MjAxMX0.FcrHuDqxKXpKhiJUwfqjKSRuq_UA9XTtAXdnB_IknZU',
      );
      _client = Supabase.instance.client;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Supabase initialization error: $e');
      }
    }
  }

  // Get Supabase client
  SupabaseClient get client => _client;

  AppSupabaseClient._internal(); // Private constructor
}
