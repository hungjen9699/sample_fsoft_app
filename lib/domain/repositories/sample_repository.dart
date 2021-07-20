import 'package:myapp/helper/event_generic.dart';

abstract class SampleRepository {
  Future<EventGeneric> getData();
}