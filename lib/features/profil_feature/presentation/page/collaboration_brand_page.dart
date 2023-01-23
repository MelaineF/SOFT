import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class CollaborationBrandPage extends StatelessWidget {
  CollaborationBrandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
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
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Collaborations',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                ButtonsTabBar(
                  backgroundColor: Colors.grey,
                  unselectedBackgroundColor: Colors.grey[300],
                  unselectedLabelStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      text: 'IN PROGRESS',
                    ),
                    Tab(
                      text: 'FINISH',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
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
                      Center(
                        child: Icon(Icons.directions_transit),
                      ),
                    ],
                  ),
                ),
              ],
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
