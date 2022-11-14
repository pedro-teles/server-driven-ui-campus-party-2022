import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:server_driven_campus_party/fakeflix/bloc/state/home_state.dart';
import 'package:server_driven_campus_party/fakeflix/repository/home_repository.dart';

enum HomeEvent {
  load
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(Load());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield Load();

    final home = await HomeRepository().fetchHomeScreen();

    yield Success(home);
  }
}
