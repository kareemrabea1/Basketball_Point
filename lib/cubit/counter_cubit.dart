import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamAIncrement(int buttomNumber) {
    teamAPoints += buttomNumber;
    emit(CounterAIncrementState());
  }

  void TeamBIncrement(int buttonNumber) {
    teamBPoints += buttonNumber;
    emit(CounterBIncrementState());
  }

  void ResetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
