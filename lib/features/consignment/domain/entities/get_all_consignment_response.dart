import 'package:chaparapp/features/consignment/consignment.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/core.dart';

@JsonSerializable()
class GetAllConsignmentResponse extends Equatable {
  const GetAllConsignmentResponse({
    required this.data,
  });

  @JsonKey(defaultValue: DefaultValues.listDefaultValue)
  final List<GetAllConsignmentData> data;

  @override
  List<Object?> get props => [data];
}
