part of 'request_data_bloc.dart';

abstract class RequestDataState extends Equatable {
  const RequestDataState();

  @override
  List<Object> get props => [];
}

class RequestDataInitial extends RequestDataState {}

class RequestLoadingState extends RequestDataState {}

class RequestCompletedState extends RequestDataState {
  const RequestCompletedState({required this.data});

  // Data returned on successful completion of the request
  // Data to be emitted or use in some other ways
  final String data;
}

class RequestFailedState extends RequestDataState {
  const RequestFailedState({required this.errorMessage});

  // A message to be emitted if request failed
  final String errorMessage;
}
