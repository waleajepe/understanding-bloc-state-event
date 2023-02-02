import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'request_data_event.dart';

part 'request_data_state.dart';

class RequestDataBloc extends Bloc<RequestDataEvent, RequestDataState> {
  RequestDataBloc() : super(RequestDataInitial()) {
    on<ButtonPressedEvent>((event, emit) async {
      try {
        emit(RequestLoadingState());
        // Network simulation with a delay of 2 secs
        await Future.delayed(const Duration(seconds: 2));
        emit(const RequestCompletedState(data: "Data Loaded"));
      } catch (error) {
        emit(RequestFailedState(errorMessage: error.toString()));
      }
    });
  }
}
