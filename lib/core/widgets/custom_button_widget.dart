import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {required this.loading,
      required this.enable,
      required this.label,
      required this.onTape,
      Key? key})
      : super(key: key);

  final bool loading;
  final bool enable;
  final String label;
  final Function() onTape;

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: enable ? Colors.blue : Colors.green, // background
                onPrimary: enable ? Colors.white : Colors.purple, // foreground
              ),
              onPressed: loading || !enable ? null : onTape,
              child: loading
                  ? const CircularProgressIndicator(
                      strokeWidth: 3,
                    )
                  : Text(
                      label,
                      style: enable
                          ? const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )
                          : const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                    ),
            ),
          ),
        ],
      );
}
