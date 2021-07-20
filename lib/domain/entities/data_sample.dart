import 'package:equatable/equatable.dart';
import 'package:myapp/data/models/attribute_model.dart';
import 'package:myapp/data/models/audience_model.dart';
import 'package:myapp/data/models/event_model.dart';

abstract class DataSample extends Equatable {
  final String version;
  final bool anonymizeIP;
  final String projectId;
  final String revision;
  final bool botFiltering;
  final String accountId;

  final List<String> rollouts;
  final List<String> typedAudiences;
  final List<String> variables;
  final List<String> featureFlags;
  final List<String> experiments;
  final List<String> groups;

  final AudienceModel audiences;
  final AttributeModel attributes;
  final EventModel events;

  DataSample(
    this.version,
    this.anonymizeIP,
    this.projectId,
    this.revision,
    this.botFiltering,
    this.accountId,
    this.audiences,
    this.attributes,
    this.events,
    this.rollouts,
    this.typedAudiences,
    this.variables,
    this.featureFlags,
    this.experiments,
    this.groups,

    // this.rollouts,
    // this.typedAudiences,
    // this.variables,
    // this.featureFlags,
    // this.experiments,
    // this.audiences,
  );

  @override
  List<Object> get props => [];
}
