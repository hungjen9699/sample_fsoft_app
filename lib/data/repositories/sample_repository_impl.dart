import 'package:myapp/data/api_provider/api_provider.dart';
import 'package:myapp/domain/repositories/sample_repository.dart';
import 'package:myapp/helper/event_generic.dart';

class SampleRepositoryImpl implements SampleRepository {
 
  final SampleAPIProvider apiProvider = new SampleAPIProviderImpl();
  SampleRepositoryImpl();

  // @override
  // Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
  //   int number,
  // ) async {
  //   return await _getTrivia(() {
  //     return remoteDataSource.getConcreteNumberTrivia(number);
  //   });
  // }
  @override
  Future<EventGeneric> getData() async {
    return await apiProvider.getData();
  }

  @override
  Future<EventGeneric> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}