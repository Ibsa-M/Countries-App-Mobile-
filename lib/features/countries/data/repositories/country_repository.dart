import 'package:countries_app/core/network/api_service.dart';
import 'package:countries_app/core/di/injection.dart';
import '../models/country_summary_model.dart';

class CountryRepository {
  final ApiService _apiService = sl<ApiService>();

  Future<List<CountrySummaryModel>> getAllCountries() async {
    return await _apiService.getAllCountries();
  }
}