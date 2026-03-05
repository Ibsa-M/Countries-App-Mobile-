import 'package:dio/dio.dart';
import 'package:countries_app/core/di/injection.dart';
import 'package:countries_app/features/countries/data/models/country_summary_model.dart';
import 'package:countries_app/features/countries/data/models/country_detail_model.dart';

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

    /// Fetch detailed country info (Step 2)
  Future<CountryDetailModel> getCountryDetail(String code) async {
  try {
    final response = await _dio.get(
      'alpha/$code?fields=name,flags,population,capital,region,subregion,area,timezones',
    );

    return CountryDetailModel.fromJson(response.data[0]);
  } catch (e) {
    throw Exception('Failed to fetch country details');
  }
}
}