import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widget/product_picture.dart';

class EditProfilBrandPage extends StatelessWidget {
  EditProfilBrandPage({Key? key}) : super(key: key);

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
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            AppLocalizations.of(context)!.editProfil,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(
                            width: 10,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: InkWell(
                            child: Text(
                              AppLocalizations.of(context)!.save,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              context.router.pop();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  const ProductPicture(
                    pictureUrl:
                        'https://contents.mediadecathlon.com/p1259581/k\$47977d533ae46915ab592bab64ec7153/sq/tente-de-camping-2-seconds-3-places.jpg?format=auto&f=720x720',
                  ),
                  InkWell(
                    child: Text(
                        AppLocalizations.of(context)!.changePhotoProduct,
                        style: const TextStyle(color: Colors.blue)),
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'DECATLON',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.changeBanner,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: const Text('Description'),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: ListView.builder(
                        itemCount: _tabDescription.length,
                        itemBuilder: (context, index) {
                          final item = _tabDescription[index];

                          return Card(
                            child: ListTile(
                              leading: Icon(Icons.abc),
                              title: Text(
                                item.parameter.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan,
                                  fontSize: 15,
                                ),
                              ),
                              subtitle: Text(
                                item.description.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  /// TODO : A supprimer plus tard
  List<ProductCarcteristic> _tabDescription = [
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Easy clean'),
    ProductCarcteristic('Caractéristique :', '120 cm² x 180cm²'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
    ProductCarcteristic('Caractéristique :', 'Tente 2 secondes'),
  ];
}

class ProductCarcteristic {
  ProductCarcteristic(this.parameter, this.description);

  String parameter;
  String description;
}
