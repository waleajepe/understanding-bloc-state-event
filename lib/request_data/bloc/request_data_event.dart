part of 'request_data_bloc.dart';

abstract class RequestDataEvent extends Equatable {
  const RequestDataEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class ButtonPressedEvent extends RequestDataEvent {}
