import 'package:server_driven_campus_party/fakeflix/model/HomeScreenPresentation.dart';

abstract class HomeState {}

class Load extends HomeState {}

class Success extends HomeState {
  Success(this.presentation);

  final HomeScreenPresentation presentation;
}
