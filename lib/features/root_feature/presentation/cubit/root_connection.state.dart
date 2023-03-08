import 'package:Swipe/core/cubit/cubit_state.dart';

class RootConnectionState extends CustomCubitState {
  RootConnectionState({required this.message});

  final String message;

  @override
  List<Object> get props => <Object>[
        ...super.props,
        message,
      ];
}

class RootConnectionInitialState extends RootConnectionState {
  RootConnectionInitialState({required String message})
      : super(message: message);
}

class RootConnectionInProgressState extends RootConnectionState {
  RootConnectionInProgressState({required String message})
      : super(message: message);
}

class RootConnectionSuccessState extends RootConnectionState {
  RootConnectionSuccessState({required String message})
      : super(message: message);
}

class RootConnectionFailedState extends RootConnectionState {
  RootConnectionFailedState({required String message})
      : super(message: message);
}
