import 'package:Swipe/core/helper/app_constants.dart';
import 'package:Swipe/core/isar/isar_mixin.dart';
import 'package:Swipe/core/isar/user_connected.dart';
import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:Swipe/core/widget/custom_elevated_button.dart';
import 'package:Swipe/core/widget/custom_outlined_button.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signin_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwipeCard extends StatefulWidget with IsarMixin {
  SwipeCard({
    Key? key,
    required this.picturePath,
    required this.creatorName,
    required this.userEmail,
  }) : super(key: key);

  final String picturePath;
  final String creatorName;
  final String userEmail;

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  String userName = '';

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(20), // Image border
        child: SizedBox.fromSize(
          size: const Size.fromRadius(48), // Image radius
          child: GestureDetector(
            onVerticalDragUpdate: (details) async {
              int sensitivity = 10;
              if (details.delta.dy > sensitivity) {
                // Down Swipe
              } else if (details.delta.dy < -sensitivity) {
                // Up Swipe
                await showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(
                      /// Todo : change her/him
                      '${AppLocalizations.of(context)!.popupMatchWith} ${widget.creatorName}',
                      style:
                          const TextStyle(fontSize: AppConstants.paddingMedium),
                    ),
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CustomOutlinedButtonButtonWidget(
                            fontSize: 14,
                            width: MediaQuery.of(context).size.width / 3,
                            label: AppLocalizations.of(context)!.closeBt,
                            onTape: () {
                              context.router.pop();
                            },
                          ),
                          const SizedBox(
                            width: AppConstants.paddingExtraMedium,
                          ),
                          CustomElevatedButtonButtonWidget(
                            fontSize: 14,
                            width: MediaQuery.of(context).size.width / 3,
                            label: AppLocalizations.of(context)!.openBt,
                            onTape: () async {
                              SigninRepository repo = SigninRepository();
                              context.router.pop();
                              //
                              await widget.openIsar();
                              UserConnected? a = await widget
                                  .isarLocalDB.userConnecteds
                                  .get(1);
                              widget.closeIsar();

                              context.router.push(
                                ChatRoute(
                                  groupId: 'PNdS8cGoI1s5ml5eBZ0x',
                                  groupName: 'Ynov group',
                                  userName: a?.fullName ?? 'Un user',
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }
            },
            child: Image.asset(
              widget.picturePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}
