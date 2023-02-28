import 'package:flutter/material.dart';

import './media_size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Media Query',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: SizeConfig.safeBlockVerticalWithAppBar * 50,
            width: SizeConfig.safeBlockHorizontal * 20,
          ),
          Container(
            color: Colors.red,
            height: SizeConfig.safeBlockVerticalWithAppBar * 50,
            width: SizeConfig.safeBlockHorizontal * 20,
          ),
        ],
      ),
    );
  }
}
