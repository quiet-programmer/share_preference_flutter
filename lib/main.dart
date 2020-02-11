import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Silver Appbar",
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  "Sliver View",
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Slivers",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'serif',
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "$index",
                        style: TextStyle(
                          fontFamily: 'serif',
                          fontSize: 20.0,
                        ),
                        ),
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}