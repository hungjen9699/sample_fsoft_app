import 'package:myapp/domain/entities/attribute.dart';

class AttributeModel extends Attribute {
  AttributeModel({id, key}) : super(id, key);
  factory AttributeModel.fromJson(Map<String, dynamic> json) {
    return AttributeModel(
      id: json['id'] ?? '',
      key: json['key'] ?? '',
    );
  }
}
