import 'package:flutter/material.dart';
import 'package:flutter_app1/appbar_actions.dart';
import 'package:flutter_app1/pop_until_example.dart';
import 'package:flutter_app1/slider_example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              title: Text('After popUntil keyboard navigation doesn\'t work'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => PopUntilExample(),
                ),
              ),
            );
          } else if (index == 1) {
            return ListTile(
              title: Text('Slider doesn\'t receive keyboard focus'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => SliderExample(),
                ),
              ),
            );
          } else if (index == 2) {
            return ListTile(
              title: Text('Appbar actions'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => AppBarActionsExample(),
                ),
              ),
            );
          }
          return Container();
        },
        itemCount: 3,
      ),
    );
  }
}
