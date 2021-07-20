import 'package:equatable/equatable.dart';

abstract class Audience extends Equatable {
  final String id;
  final List<String> conditions;
  final String name;

  Audience(this.id, this.conditions, this.name);

  @override
  List<Object> get props => [];
}
