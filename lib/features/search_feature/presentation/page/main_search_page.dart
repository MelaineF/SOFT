import 'package:Swipe/features/search_feature/presentation/widget/search_field.widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MainSearchPage extends StatelessWidget {
  const MainSearchPage({Key? key}) : super(key: key);

  void _searchCollaboration(String? query) => 'La query';

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
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, left: 5),
                                child: InkWell(
                                  child: const Icon(
                                    Icons.close_rounded,
                                    size: 30,
                                  ),
                                  onTap: () {
                                    context.router.pop();
                                  },
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/images/logo.png',
                                width: 80,
                                height: 80,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PreferredSize(
                    preferredSize: const Size(double.infinity, 70),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 12,
                        left: 15,
                        right: 15,
                      ),
                      child: SearchField(
                        onSearch: (String? value) =>
                            _searchCollaboration(value),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        color: Colors.black12,
                        child: const Text('Search results ...'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
