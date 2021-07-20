import 'package:myapp/data/models/attribute_model.dart';
import 'package:myapp/data/models/audience_model.dart';
import 'package:myapp/domain/entities/data_sample.dart';

import 'event_model.dart';

class DataSampleModel extends DataSample {
  DataSampleModel(
      {projectId,
      anonymizeIP,
      version,
      revision,
      botFiltering,
      accountId,
      audiences,
      attributes,
      events,
      rollouts,
      typedAudiences,
      variables,
      featureFlags,
      experiments,
      groups})
      : super(
            version,
            anonymizeIP,
            projectId,
            revision,
            botFiltering,
            accountId,
            audiences,
            attributes,
            events,
            rollouts,
            typedAudiences,
            variables,
            featureFlags,
            experiments,
            groups);
  factory DataSampleModel.fromJson(Map<String, dynamic> json) {
    return DataSampleModel(
        version: json['version'] ?? '',
        anonymizeIP: json['anonymizeIP'] ?? true,
        projectId: json['projectId'] ?? '',
        revision: json['revision'] ?? '',
        botFiltering: json['botFiltering'] ?? true,
        accountId: json['accountId'] ?? '',
        audiences: getAudience(json['audiences']),
        attributes: getAttribute(json['attributes']),
        rollouts: json["rollouts"] == null
            ? null
            : List<String>.from(json["rollouts"].map((x) => x)),
        typedAudiences: json["typedAudiences"] == null
            ? null
            : List<String>.from(json["typedAudiences"].map((x) => x)),
        variables: json["variables"] == null
            ? null
            : List<String>.from(json["variables"].map((x) => x)),
        featureFlags: json["featureFlags"] == null
            ? null
            : List<String>.from(json["featureFlags"].map((x) => x)),
        experiments: json["experiments"] == null
            ? null
            : List<String>.from(json["experiments"].map((x) => x)),
        groups: json["groups"] == null
            ? null
            : List<String>.from(json["groups"].map((x) => x)),
        events: getEvent(json['events']));
  }
}

AudienceModel getAudience(dynamic audience) {
  try {
    return AudienceModel.fromJson(audience[0]);
  } catch (e) {
    print(e);
  }
  return AudienceModel();
}

AttributeModel getAttribute(dynamic attribute) {
  try {
    return AttributeModel.fromJson(attribute[0]);
  } catch (e) {
    print(e);
  }
  return AttributeModel();
}

EventModel getEvent(dynamic event) {
  try {
    return EventModel.fromJson(event[0]);
  } catch (e) {
    print(e);
  }
  return EventModel();
}
