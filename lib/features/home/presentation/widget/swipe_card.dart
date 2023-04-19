import 'package:Swipe/core/helper/app_constants.dart';
import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:Swipe/core/widget/custom_elevated_button.dart';
import 'package:Swipe/core/widget/custom_outlined_button.dart';
import 'package:Swipe/features/login_register_feature/data/repository_impl/signin_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nanoid/nanoid.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({Key? key, required this.picturePath, required this.creatorName}) : super(key: key);

  final String picturePath;
  final String creatorName;

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
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
                            onTape: () {
                              SigninRepository repo = SigninRepository();
                              context.router.pop();
                              context.router.push(
                                ChatRoute(
                                  groupId: nanoid(),
                                  groupName: widget.creatorName + "'s Chat",
                                  userName: repo.currentUser?.displayName ?? "Valentin",
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
