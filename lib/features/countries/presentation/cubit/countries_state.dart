part of 'countries_cubit.dart';

abstract class CountriesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CountriesInitial extends CountriesState {}

class CountriesLoading extends CountriesState {}

class CountriesLoaded extends CountriesState {
  final List<CountrySummaryModel> countries;

  CountriesLoaded(this.countries);

  @override
  List<Object?> get props => [countries];
}

class CountriesError extends CountriesState {
  final String message;

  CountriesError(this.message);

  @override
  List<Object?> get props => [message];
}