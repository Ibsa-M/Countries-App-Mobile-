part of 'detail_cubit.dart';

abstract class DetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DetailInitial extends DetailState {}

class DetailLoading extends DetailState {}

class DetailLoaded extends DetailState {
  final CountryDetailModel detail;

  DetailLoaded(this.detail);

  @override
  List<Object?> get props => [detail];
}

class DetailError extends DetailState {
  final String message;

  DetailError(this.message);

  @override
  List<Object?> get props => [message];
}