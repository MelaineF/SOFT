import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InvitationPage extends StatefulWidget {
  InvitationPage({Key? key}) : super(key: key);

  @override
  State<InvitationPage> createState() => _InvitationPageState();
}

class _InvitationPageState extends State<InvitationPage> {
  final List<Item> _data = generateItems(20);

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
                            AppLocalizations.of(context)!.request,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: double.infinity,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                _data[index].isExpanded = !isExpanded;
                              });
                            },
                            children: _data
                                .map<ExpansionPanel>((Item item) =>
                                    ExpansionPanel(
                                      headerBuilder: (BuildContext context,
                                              bool isExpanded) =>
                                          Card(
                                              child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: ClipOval(
                                                    child: SizedBox.fromSize(
                                                      size:
                                                          const Size.fromRadius(
                                                              50),
                                                      // Image radius
                                                      child: Image.asset(
                                                        'assets/images/Untitled3.png',
                                                        //   height: 150.0,
                                                        //   width: 150.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Text(
                                                    item.headerValue.toString(),
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                    overflow: TextOverflow.clip,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  const Text(
                                                    ' vous à envoyé une demande\n de collaboration',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                    overflow: TextOverflow.clip,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    'Produit${item.headerValue}',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  ElevatedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      foregroundColor:
                                                          Colors.white,
                                                      backgroundColor:
                                                          Colors.black,
                                                    ),
                                                    onPressed: () {},
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .accept,
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors.white,
                                                    ),
                                                    onPressed: () {},
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .refuse,
                                                      style: const TextStyle(
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )),
                                      body: ListTile(
                                          title: Text(item.expandedValue),
                                          subtitle: const Text(
                                              'To delete this panel, tap the trash can icon'),
                                          trailing: const Icon(Icons.delete),
                                          onTap: () {
                                            setState(() {
                                              _data.removeWhere(
                                                  (Item currentItem) =>
                                                      item == currentItem);
                                            });
                                          }),
                                      isExpanded: item.isExpanded,
                                    ))
                                .toList(),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}

class InvitationCarcteristic {
  InvitationCarcteristic(this.parameter, this.description);

  String parameter;
  String description;
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Angèle la Star',
      expandedValue: 'Ici les détails de la collaboration.',
    );
  });
}
