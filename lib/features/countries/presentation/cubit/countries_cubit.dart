import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/country_summary_model.dart';
import '../../data/repositories/country_repository.dart';
import 'package:countries_app/core/di/injection.dart';

part 'countries_state.dart';

class CountriesCubit extends Cubit<CountriesState> {
  final CountryRepository _repository = sl<CountryRepository>();

  List<CountrySummaryModel> _allCountries = [];

  CountriesCubit() : super(CountriesInitial());

  Future<void> fetchCountries() async {
    emit(CountriesLoading());
    try {
      final countries = await _repository.getAllCountries();
      _allCountries = countries;
      emit(CountriesLoaded(countries));
    } catch (e) {
      emit(CountriesError("Failed to fetch countries"));
    }
  }

  void search(String query) {
    if (query.isEmpty) {
      emit(CountriesLoaded(_allCountries));
    } else {
      final filtered = _allCountries
          .where((c) =>
              c.name.common.toLowerCase().contains(query.toLowerCase()))
          .toList();
      emit(CountriesLoaded(filtered));
    }
  }
}