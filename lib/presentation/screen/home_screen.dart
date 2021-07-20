import 'package:flutter/material.dart';
import 'package:myapp/presentation/bloc/sample_bloc.dart';
import 'package:myapp/presentation/bloc/sample_event.dart';
import 'package:myapp/presentation/bloc/sample_state.dart';
import 'package:myapp/presentation/widget/info_form.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GetSampleDataBloc _bloc = new GetSampleDataBloc(GetSampleDataInitial());
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Title"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        _bloc.add(GetSampleData());
                      },
                      child: Text(
                        "Get",
                        style: TextStyle(color: Colors.white),
                      )),
                  FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        _bloc.add(ClearData());

                      },
                      child: Text(
                        "Clear",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            InfoForm(bloc: _bloc,)
          ],
        ));
  }
}
