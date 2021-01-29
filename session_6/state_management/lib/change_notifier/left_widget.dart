import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/change_notifier/change_notifier_view_model.dart';

class LeftWidget extends StatefulWidget {
  @override
  _LeftWidgetState createState() => _LeftWidgetState();
}

class _LeftWidgetState extends State<LeftWidget> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<DemoViewModel>(context);
    // return Container(
    //     child: Column(children: [
    //   RaisedButton(
    //     onPressed: () {
    //       pro.updateRightCounter();
    //     },
    //   )
    // ]));
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
          Text('${viewModel.getLeftCounter()}'),
          RaisedButton(
            child: Text('Update right'),
            onPressed: () {
              viewModel.updateRightCounter();
            },
          ),
          child
        ]);
      },
      child: Column(
        children: [
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
        ],
      ),
    ));
  }
}
