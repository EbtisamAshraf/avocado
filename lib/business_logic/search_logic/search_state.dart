part of 'search_cubit.dart';

@immutable
abstract class SearchForClinicState {}

class SearchForClinicInitial extends SearchForClinicState {}
class ClinicLoaded extends SearchForClinicState {

}
class ClinicLoading extends SearchForClinicState {}
class ClinicError extends SearchForClinicState {}
class SearchState extends SearchForClinicState {}
class ChangeRateState extends SearchForClinicState {}
class SortByRatedState extends SearchForClinicState {}
