import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckConnexionPage extends StatefulWidget {
  const CheckConnexionPage({Key? key}) : super(key: key);

  @override
  State<CheckConnexionPage> createState() => _CheckConnexionPageState();
}

class _CheckConnexionPageState extends State<CheckConnexionPage> {
  // Etat de la connection réseau téléphone/wifi/bluethoot/none, etc
  ConnectivityResult _connectionStatus = ConnectivityResult.none;

  // Ecouteur de l'état de la connectivité
  final Connectivity _connectivity = Connectivity();

  // Stream de la connectivité
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    _initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> _initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint('Etat de la connectivité e = $e');
      return;
    }
    if (!mounted) {
      return Future<void>.value();
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() async {
      _connectionStatus = result;

      if (_connectionStatus != ConnectivityResult.mobile &&
          _connectionStatus != ConnectivityResult.wifi) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: Colors.white,
            content: const Text(
              'Pas de connexion Internet',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  // Quitte l'application lorsque
                  // l'utilisateur presse OK
                  SystemNavigator.pop();
                  exit(0);
                },
              ),
            ],
          ),
        );
      } else {
        // Show the splashscreen page

      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(),
        ),
      );
}
