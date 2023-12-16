import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  var images = [
    'assets/images/chair.jpg',
    'assets/images/chair2.jpg',
    'assets/images/chair3.jpg',
    'assets/images/chair3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Decoration"),
          actions: [
            Center(child: Text('Filters')),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: Container(
                child: const TabBar(
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 50),
                    tabs: [
                      Tab(
                        text: 'Featured',
                      ),
                      Tab(
                        text: 'Collection',
                      ),
                      Tab(text: 'Men'),
                      Tab(
                        text: 'Women',
                      ),
                      Tab(
                        text: 'kids',
                      ),
                    ]),
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  shrinkWrap: true,
                  children: List.generate(
                      4,
                      (index) => ListView(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(images[index]),
                                              fit: BoxFit.cover))),
                                  Text("George Jenson"),
                                  Text('Minimal clock'),
                                  Text('\$2.5'),
                                ],
                              ),
                            ],
                          )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
