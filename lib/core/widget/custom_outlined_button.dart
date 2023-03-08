import 'package:Swipe/core/helper/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButtonButtonWidget extends StatelessWidget {
  CustomOutlinedButtonButtonWidget({
    this.loading = false,
    this.enable = true,
    required this.label,
    required this.onTape,
    Key? key,
  }) : super(key: key);

  final bool loading;
  final bool enable;
  final String label;
  final Function() onTape;

  final ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 15),
    minimumSize: const Size(double.infinity, 50),
    side: const BorderSide(
      color: AppColors.c1,
      width: 1.5,
    ),
    primary: AppColors.c1,
  );

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: outlinedButtonStyle,
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