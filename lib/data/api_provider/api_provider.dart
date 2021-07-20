import 'package:http/http.dart' as http;
import 'package:myapp/data/models/data_sample_model.dart';
import 'package:myapp/domain/entities/data_sample.dart';
import 'package:myapp/helper/event_generic.dart';
import 'dart:convert';

abstract class SampleAPIProvider {
  Future<EventGeneric> getData();
  Future<EventGeneric> getDataFromAPI();
}

class SampleAPIProviderImpl implements SampleAPIProvider {
  static final SampleAPIProviderImpl provider =
      SampleAPIProviderImpl._internal();
  SampleAPIProviderImpl._internal();
  factory SampleAPIProviderImpl() {
    return provider;
  }
  @override
  Future<EventGeneric> getData() async {
    try {
      var url = Uri.parse(
          'https://cdn.optimizely.com/datafiles/27EEEFtys3Y2jrkrtutqh.json');
      final response = await http.read(url);
      EventGeneric returnEvent = new EventGeneric();

      var data = DataSampleModel.fromJson(json.decode(response));
      returnEvent.setValue(200, data);
      return returnEvent;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<EventGeneric> getDataFromAPI() async {
    var url = Uri.parse('url_here');

    try {
      final res = await http.get(url);
        EventGeneric returnEvent = new EventGeneric();

      if (res.statusCode == 200) {
        final jsonData = jsonDecode(res.body);
        var data = DataSampleModel.fromJson(jsonData);
        returnEvent.setValue(200, data);
      }
      else{
        returnEvent.setValue(res.statusCode, "Get Data Failed");
      }
      return returnEvent;
    } catch (e) {
      throw Exception(e);
    }
  }
}
