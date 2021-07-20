import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/models/data_sample_model.dart';
import 'package:myapp/data/repositories/sample_repository_impl.dart';
import 'package:myapp/domain/repositories/sample_repository.dart';
import 'package:myapp/helper/event_generic.dart';
import 'package:myapp/presentation/bloc/sample_event.dart';
import 'package:myapp/presentation/bloc/sample_state.dart';

class GetSampleDataBloc extends Bloc<GetSampleDataEvent, GetSampleDataState> {
  GetSampleDataBloc(GetSampleDataState initialState) : super(initialState);

  @override
  Stream<GetSampleDataState> mapEventToState(
    GetSampleDataEvent event,
  ) async* {
    if (event is GetSampleData) {
      try {
        yield GetSampleDataLoading();
        SampleRepository repo = new SampleRepositoryImpl();
        EventGeneric returnValue = await repo.getData();
        if (returnValue.statusCode == 200) {
          DataSampleModel data = returnValue.returnValue;
          yield GetSampleDataSuccess(data);
        } else {
          yield GetSampleDataError("Data not found");
        }
      } catch (e) {
        yield GetSampleDataError(e.toString());
      }
    } else if (event is ClearData) {
      
      yield ClearDataSuccess();
    }
  }
}
