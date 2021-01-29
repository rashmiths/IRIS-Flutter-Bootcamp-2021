import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/change_notifier/change_notifier_view_model.dart';

class RightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<DemoViewModel>(
      builder: (BuildContext context, viewModel, Widget child) {
        return Column(children: [
          Container(
            color: Colors.red,
            height: 20,
            child: Text('Constant'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.blue,
            height: 20,
            child: Text('Constant'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.green,
            height: 20,
            child: Text('Constant'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.yellow,
            height: 20,
            child: Text('Constant'),
          ),
          Text('${viewModel.getRightCounter()}'),
          RaisedButton(
            child: Text('Update Left'),
            onPressed: () {
              viewModel.updateLeftCounter();
            },
          ),
          child
        ]);
      },
      child: Column(children: [
        Container(
          color: Colors.red,
          height: 20,
          child: Text('Constant'),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.blue,
          height: 20,
          child: Text('Constant'),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.green,
          height: 20,
          child: Text('Constant'),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.yellow,
          height: 20,
          child: Text('Constant'),
        )
      ]),
    ));
  }
}
