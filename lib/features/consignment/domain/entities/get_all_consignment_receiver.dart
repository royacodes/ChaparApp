import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';

@JsonSerializable()
class GetAllConsignmentReceiver extends Equatable {
  const GetAllConsignmentReceiver({
    required this.gender,
    required this.fullName,
    required this.mobile,
  });

  @JsonKey(defaultValue: DefaultValues.stringDefaultValue)
  final String gender;
  @JsonKey(name: 'full_name', defaultValue: DefaultValues.stringDefaultValue)
  final String fullName;
  @JsonKey(defaultValue: DefaultValues.stringDefaultValue)
  final String mobile;

  @override
  List<Object?> get props => [
        gender,
        fullName,
        mobile,
      ];
}
