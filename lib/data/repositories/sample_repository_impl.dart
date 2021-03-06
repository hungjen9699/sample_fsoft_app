import 'package:myapp/data/api_provider/api_provider.dart';
import 'package:myapp/domain/repositories/sample_repository.dart';
import 'package:myapp/helper/event_generic.dart';

class SampleRepositoryImpl implements SampleRepository {
 
  final SampleAPIProvider apiProvider = new SampleAPIProviderImpl();
  SampleRepositoryImpl();

  @override
  Future<EventGeneric> getData() async {
    return await apiProvider.getData();
  }

}