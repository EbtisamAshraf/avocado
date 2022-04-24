part of 'App_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}
class ChangeDarkStats extends AppState {}
class GetDarkModeStats extends AppState {}
class ChangeBookMarkStats extends AppState {}
