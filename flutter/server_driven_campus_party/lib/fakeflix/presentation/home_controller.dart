import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:server_driven_campus_party/fakeflix/bloc/home_bloc.dart';
import 'package:server_driven_campus_party/fakeflix/bloc/state/home_state.dart';
import 'package:server_driven_campus_party/fakeflix/model/HomeScreenPresentation.dart';
import 'package:server_driven_campus_party/fakeflix/presentation/home_loading.dart';
import 'package:server_driven_campus_party/fakeflix/presentation/home_screen.dart';

class HomeController extends StatelessWidget {
  const HomeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc()..add(HomeEvent.load),
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        switch(state.runtimeType) {
          case Success:
            final homeState = state as Success;

            return HomeScreen(homeState.presentation);
          case Load:
            return HomeLoading();
        }

        return Container();
      },),
    );
  }
}
