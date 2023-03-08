import 'package:equatable/equatable.dart';

abstract class CustomCubitState extends Equatable {
  final int privateTimeStamp = DateTime.now().millisecondsSinceEpoch;

  @override
  List<Object> get props => <Object>[privateTimeStamp];
}
/*
class CubitInitState extends CustomCubitState {}

class CubitErrorState extends CustomCubitState {
  CubitErrorState(this.msgFailure);

  final String msgFailure;
}*/
