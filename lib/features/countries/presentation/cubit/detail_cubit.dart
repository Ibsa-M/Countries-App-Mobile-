import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/country_detail_model.dart';
import '../../data/repositories/country_repository.dart';
import 'package:countries_app/core/di/injection.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  final CountryRepository _repository = sl<CountryRepository>();

  DetailCubit() : super(DetailInitial());

  Future<void> fetchDetail(String code) async {
    emit(DetailLoading());
    try {
      
      final detail = await _repository.getCountryDetail(code);
      emit(DetailLoaded(detail));
    } catch (e) {
      emit(DetailError("Failed to load details"));
    }
  }
}