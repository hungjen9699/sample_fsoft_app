import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/presentation/bloc/sample_bloc.dart';
import 'package:myapp/presentation/bloc/sample_state.dart';

import 'info_field.dart';

class InfoForm extends StatefulWidget {
  final GetSampleDataBloc bloc;

  const InfoForm({Key? key, required this.bloc}) : super(key: key);
  @override
  State<StatefulWidget> createState() => new _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => widget.bloc,
      child: BlocBuilder<GetSampleDataBloc,  GetSampleDataState>(
          builder: (context, state) {
        if (state is GetSampleDataInitial) {
          return Text("Intitial");
        }
        if (state is GetSampleDataLoading) {
          return CircularProgressIndicator(
            semanticsLabel: 'Linear progress indicator',
          );
        } else if (state is GetSampleDataSuccess) {
          return Container(
              child: Column(
            children: [
              InfoField(icon:Icons.account_circle,title: "AccountId",value: state.sample.accountId),
              InfoField(icon:Icons.merge_type,title: "Version",value: state.sample.version),
              InfoField(icon:Icons.mic_external_on,title: "ProjectId",value: state.sample.projectId),
              InfoField(icon:Icons.access_alarms_outlined,title: "Revision",value: state.sample.revision)
            ],
          ));
        }
        else if (state is ClearDataSuccess) {
          return Container(
              child:Text("Data has been cleaned"));
        }
         else
          return Text("Error");
      }),
    );
  }
}
