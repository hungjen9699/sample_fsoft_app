import 'package:myapp/domain/entities/audience.dart';

class AudienceModel extends Audience {
  AudienceModel(
      {id,conditions,name})
      : super(id,conditions,name
           );
  factory AudienceModel.fromJson(Map<String, dynamic> json) {
      var list = ['one', 'two', 'three'];
    return AudienceModel(
      id: json['id'] ?? '',
      conditions: list,
      name: json['name'] ?? '',
    );
  }

}
