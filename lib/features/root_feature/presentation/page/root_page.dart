import 'package:Swipe/features/login_register_feature/presentation/page/first_connection_page.dart';
import 'package:Swipe/features/lost_connection/presentation/page/checkConnexion_page.dart';
import 'package:Swipe/features/root_feature/presentation/cubit/root_connection.cubit.dart';
import 'package:Swipe/features/root_feature/presentation/cubit/root_connection.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';

class RootPage extends StatelessWidget {
  RootPage({Key? key}) : super(key: key);

  final RootConnectionCubit connectionCubit = RootConnectionCubit();

  @override
  Widget build(BuildContext context) =>
      StreamProvider<InternetConnectionStatus>(
        initialData: InternetConnectionStatus.connected,
        create: (_) => InternetConnectionChecker().onStatusChange,
        child: Scaffold(
          backgroundColor: Colors.tealAccent,
          body: BlocProvider<RootConnectionCubit>(
            create: (BuildContext context) => connectionCubit,
            child: BlocBuilder<RootConnectionCubit, RootConnectionState>(
              builder: (BuildContext context, RootConnectionState state) {
                /*InternetConnectionChecker().onStatusChange
                    .listen((InternetConnectionStatus status) {
                  switch (status) {
                    case InternetConnectionStatus.connected:
                      print('Data connection is available.');
                      break;
                    case InternetConnectionStatus.disconnected:
                      print('You are disconnected from the internet.');
                      break;
                  }
                });*/

                if (Provider.of<InternetConnectionStatus>(context) ==
                    InternetConnectionStatus.disconnected) {
                  return const CheckConnexionPage();
                } else {
                  return const FirstConnectionPage();
                }
              },
            ),
          ),
        ),
      );
}
