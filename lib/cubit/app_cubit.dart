import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';

import '../services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits(this.data) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;

  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
