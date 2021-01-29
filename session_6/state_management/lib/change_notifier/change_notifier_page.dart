import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/change_notifier/change_notifier_view_model.dart';
import 'package:state_management/change_notifier/right_widget.dart';

import 'left_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ParentWidget(title: 'Flutter Demo Home Page'),
    );
  }
}

class ParentWidget extends StatelessWidget {
  final String title;

  const ParentWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ChangeNotifierProvider(
          create: (BuildContext context) => DemoViewModel(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Parent',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LeftWidget(),
                    SizedBox(
                      width: 30,
                    ),
                    RightWidget()
                  ]),
            ],
          ),
        ));
  }
}
