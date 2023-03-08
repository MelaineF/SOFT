import 'package:Swipe/features/root_feature/presentation/cubit/root_connection.state.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class RootConnectionCubit extends Cubit<RootConnectionState> {
  RootConnectionCubit() : super(RootConnectionInitialState(message: ''));

  void connectionAttempt() {
    emit(RootConnectionInProgressState(message: ''));

    Future<void>.delayed(
      const Duration(seconds: 2),
    );

    emit(RootConnectionSuccessState(message: 'Connection Ok'));

    //emit(RootConnectionFailedState(message: 'Connection failed'));
  }
}
