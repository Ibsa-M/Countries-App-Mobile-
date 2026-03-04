import 'package:dio/dio.dart';
import 'package:countries_app/core/di/injection.dart';
import 'package:countries_app/features/countries/data/models/country_summary_model.dart';

class ApiService {
  final Dio _dio = sl<Dio>();

  /// Fetch minimal country list (Step 1)
  Future<List<CountrySummaryModel>> getAllCountries() async {
    try {
      final response = await _dio.get(
        'all?fields=name,flags,population,cca2',
      );

      return (response.data as List)
          .map((e) => CountrySummaryModel.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch countries');
    }
  }
}