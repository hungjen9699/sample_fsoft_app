import 'package:equatable/equatable.dart';

abstract class Attribute extends Equatable {
  final String id;
  final String key;

  Attribute(this.id, this.key);

  @override
  List<Object> get props => [];
}
