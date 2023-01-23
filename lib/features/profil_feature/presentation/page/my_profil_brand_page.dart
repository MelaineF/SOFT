import 'package:Swipe/core/navigation/app.router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyProfilBrandPage extends StatelessWidget {
  const MyProfilBrandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.close_rounded,
                            size: 30,
                          ),
                          onTap: () {
                            context.router.pop();
                          },
                        ),
                        const Expanded(child: SizedBox()),
                        SizedBox(
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                child: const Icon(
                                  Icons.handshake_outlined,
                                  size: 30,
                                ),
                                onTap: () {
                                  context.router
                                      .push(CollaborationBrandRoute());
                                },
                              ),
                              InkWell(
                                child: const Icon(
                                  Icons.email_outlined,
                                  size: 30,
                                ),
                                onTap: () {
                                  context.router.push(InvitationRoute());
                                },
                              ),
                              InkWell(
                                child: const Icon(
                                  Icons.settings,
                                  size: 30,
                                ),
                                onTap: () {
                                  context.router.push(const SettingRoute());
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(48), // Image radius
                          child: Image.network(
                            'https://contents.mediadecathlon.com/b69326/k\$9098d7603315c87b5e845e864c21ecd7/1180x0/256pt256/512xcr512/default.png?format=auto&quality=80',
                            height: 150.0,
                            width: 100.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Décathlon',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: Text(
                          AppLocalizations.of(context)!.editProfil,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 70,
                    child: const Text(
                      'bio :  Decathlon est une enseigne spécialisée dans la '
                      'grande distribution de matériel et d'
                      '\'équipements sportifs. Elle vend aussi bien des marques'
                      ' indépendantes que des articles conçus et produits'
                      ' sous ses propres marques hghghfh jffhjgfhhf jhjgfghj ',
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.fade,
                      maxLines: 3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context)!.lastProduct,
                      ),
                      ElevatedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          context.router.push(EditProfilBrandRoute());
                        },
                        child: Text(
                          AppLocalizations.of(context)!.editProduct,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 100,
                    color: Colors.grey[300],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!.lastProduct,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'DECATHLON',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.network(
                          'https://contents.mediadecathlon.com/p1259581/k\$47977d533ae46915ab592bab64ec7153/sq/tente-de-camping-2-seconds-3-places.jpg?format=auto&f=720x720',
                          width: 80,
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 10,
                        ), //apply padding to all four sides
                        child: Text(
                          AppLocalizations.of(context)!.collaborateWith,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: _theCollabs(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

Widget _theCollabs() => GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => SizedBox(
        height: 50,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: const Color(0xFFEBEBEB),
          elevation: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(8), // Image radius
                      child: Image.network(
                        'https://contents.mediadecathlon.com/b69326/k\$9098d7603315c87b5e845e864c21ecd7/1180x0/256pt256/512xcr512/default.png?format=auto&quality=80',
                        //  height: 150.0,
                        //  width: 150.0,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  ' X ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48), // Image radius
                      child: Image.asset(
                        'assets/images/Untitled3.png',
                        //   height: 150.0,
                        //   width: 150.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
