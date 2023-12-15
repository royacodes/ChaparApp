import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';

@JsonSerializable()
class GetAllConsignmentReceiverAddress extends Equatable {
  const GetAllConsignmentReceiverAddress({
    required this.city,
    required this.region,
    required this.fullAddress,
  });

  @JsonKey(defaultValue: DefaultValues.stringDefaultValue)
  final String city;
  @JsonKey(defaultValue: DefaultValues.stringDefaultValue)
  final String region;
  @JsonKey(name: 'full_address', defaultValue: DefaultValues.stringDefaultValue)
  final String fullAddress;

  @override
  List<Object?> get props => [
        city,
        region,
        fullAddress,
      ];
}
